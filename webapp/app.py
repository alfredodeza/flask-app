from flask import Flask, abort

app = Flask(__name__)

@app.route("/")
def two_hundred():
    return "200! all is good from Duke University"

@app.route("/error")
def error():
    abort(500, "oooh some error!")


if __name__ == "__main__":
    app.run(debug=True, port=5000, host="0.0.0.0")
