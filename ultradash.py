from http.server import HTTPServer, BaseHTTPRequestHandler
import _jsonnet
import json
from jinja2 import Environment, FileSystemLoader
import os

json_str = _jsonnet.evaluate_file("config.jsonnet")
layout = json.loads(json_str)

class DashboardServer(BaseHTTPRequestHandler):
    def gethtml(self):
        env = Environment( loader = FileSystemLoader(os.path.dirname(os.path.abspath(__file__))))
        template = env.get_template("dashboard.html")
        return template.render(layout=layout)

    def do_GET(self):
        self.send_response(200)
        self.send_header("Content-type", "text/html")
        self.end_headers()
        self.wfile.write(bytes(self.gethtml(), "utf8"))

ws = HTTPServer(("localhost", 8080), DashboardServer)
print("Server started http://%s:%s" % ("localhost", 8080))

try:
    ws.serve_forever()
except KeyboardInterrupt:
    pass

ws.server_close()
print("Server stopped.")