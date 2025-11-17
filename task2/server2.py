from http.server import SimpleHTTPRequestHandler, HTTPServer

PORT = 8002

class Handler(SimpleHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header("Content-type", "text/html")
        self.end_headers()
        self.wfile.write(b"<h1>Server 2</h1>")

httpd = HTTPServer(('0.0.0.0', PORT), Handler)
print(f"Server 2 running on port {PORT}")
httpd.serve_forever()
