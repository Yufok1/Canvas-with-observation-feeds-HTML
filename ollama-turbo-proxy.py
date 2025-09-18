#!/usr/bin/env python3
"""
Ollama Turbo Proxy Server
Forwards browser requests to Ollama Turbo cloud API to bypass CORS restrictions.
Runs on port 11435 to complement local Ollama on port 11434.
"""

import http.server
import socketserver
import json
import urllib.request
import urllib.parse
from urllib.error import HTTPError
import os
import sys

# Configuration
PROXY_PORT = 11435
OLLAMA_TURBO_BASE_URL = "https://ollama.com"
API_KEY = os.environ.get('OLLAMA_TURBO_API_KEY', '')

if not API_KEY:
    print("❌ ERROR: OLLAMA_TURBO_API_KEY environment variable not set!")
    print("💡 Please set the API key using: set OLLAMA_TURBO_API_KEY=your_api_key_here")
    print("🔧 Or use the enhanced launch scripts that prompt for the API key")
    sys.exit(1)

class OllamaTurboProxy(http.server.BaseHTTPRequestHandler):
    def do_OPTIONS(self):
        """Handle CORS preflight requests"""
        self.send_response(200)
        self.send_header('Access-Control-Allow-Origin', '*')
        self.send_header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS')
        self.send_header('Access-Control-Allow-Headers', 'Content-Type, Authorization')
        self.send_header('Access-Control-Max-Age', '86400')
        self.end_headers()

    def do_GET(self):
        """Handle GET requests (like /api/tags)"""
        self._proxy_request('GET')

    def do_POST(self):
        """Handle POST requests (like /api/generate)"""
        self._proxy_request('POST')

    def _proxy_request(self, method):
        try:
            # Build target URL
            target_url = f"{OLLAMA_TURBO_BASE_URL}{self.path}"

            # Prepare headers
            headers = {
                'Content-Type': 'application/json',
                'Authorization': f'Bearer {API_KEY}',
                'User-Agent': 'Canvas-Turbo-Proxy/1.0'
            }

            # Read request body for POST requests
            content_length = int(self.headers.get('Content-Length', 0))
            post_data = None
            if method == 'POST' and content_length > 0:
                post_data = self.rfile.read(content_length)

            # Create request
            req = urllib.request.Request(
                target_url,
                data=post_data,
                headers=headers,
                method=method
            )

            # Forward request to Ollama Turbo
            print(f"🚀 Proxying {method} {self.path} to {target_url}")
            with urllib.request.urlopen(req, timeout=1800) as response:  # 30 min timeout for large models
                # Read response
                response_data = response.read()

                # Send response back to browser
                self.send_response(response.status)
                self.send_header('Access-Control-Allow-Origin', '*')
                self.send_header('Content-Type', 'application/json')
                self.send_header('Content-Length', str(len(response_data)))
                self.end_headers()
                self.wfile.write(response_data)

                print(f"✅ Successfully proxied {method} {self.path} ({len(response_data)} bytes)")

        except HTTPError as e:
            print(f"❌ HTTP Error {e.code}: {e.reason}")
            self.send_response(e.code)
            self.send_header('Access-Control-Allow-Origin', '*')
            self.send_header('Content-Type', 'application/json')
            self.end_headers()
            error_response = json.dumps({"error": f"HTTP {e.code}: {e.reason}"})
            self.wfile.write(error_response.encode())

        except Exception as e:
            print(f"❌ Proxy Error: {str(e)}")
            self.send_response(500)
            self.send_header('Access-Control-Allow-Origin', '*')
            self.send_header('Content-Type', 'application/json')
            self.end_headers()
            error_response = json.dumps({"error": f"Proxy error: {str(e)}"})
            self.wfile.write(error_response.encode())

    def log_message(self, format, *args):
        """Customize logging"""
        pass  # Suppress default HTTP logs, we handle our own

def main():
    print("🔥 OLLAMA TURBO PROXY SERVER")
    print("=" * 50)
    print(f"⚡ Turbo API: {OLLAMA_TURBO_BASE_URL}")
    print(f"🌐 Proxy Port: {PROXY_PORT}")
    print(f"🔑 API Key: {API_KEY[:20]}... (loaded from environment)")
    print("=" * 50)

    try:
        with socketserver.TCPServer(("", PROXY_PORT), OllamaTurboProxy) as httpd:
            print(f"🚀 Proxy server started at: http://localhost:{PROXY_PORT}")
            print("📡 Ready to forward requests to Ollama Turbo!")
            print("🛑 Press Ctrl+C to stop")
            print("-" * 50)
            httpd.serve_forever()
    except KeyboardInterrupt:
        print("\n🛑 Proxy server stopped by user")
    except OSError as e:
        if e.errno == 10048:  # Port already in use
            print(f"❌ Port {PROXY_PORT} is already in use")
            print("💡 Another proxy instance may already be running")
        else:
            print(f"❌ Error starting proxy: {e}")
    except Exception as e:
        print(f"❌ Unexpected error: {e}")

if __name__ == "__main__":
    main()