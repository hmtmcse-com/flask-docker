from flask import Flask

app = Flask(__name__)

@app.route("/")
def bismillah():
    return "<p>In the name of God, the Most Gracious, the Most Merciful.</p>"


port_number = 1212
if __name__ == '__main__':
    app.run(port=port_number)