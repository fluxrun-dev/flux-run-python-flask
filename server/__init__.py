from flask import Flask


def create_app():
    app = Flask(__name__)

    @app.route("/")
    def main():
        return "Python Flask: Hello World"

    return app
