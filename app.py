"""
hello_flask: First Python-Flask webapp
"""

from flask import Flask


app = Flask(__name__)    # Construct an instance of Flask class for our webapp


@app.route('/')   # URL '/' to be handled by main() route handler
def main():
    """Say hello"""
    return 'Hello, world!'


if __name__ == '__main__':
    print("Hello World! Built with a Docker file.")
    # Launch built-in web server and run this Flask webapp
    app.run(host="0.0.0.0", port=8080, debug=True, use_reloader=True)
