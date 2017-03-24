from flask import Flask, request
from flask_restful import Resource, Api
import sys
import time

export http_proxy="http://165.225.104.34:80"
export https_proxy="https://165.225.104.34:80"

app = Flask(__name__)
api = Api(app)


class TodoSimple(Resource):
    def get(self):
        return { 'time' : time.strftime("%b %d %Y %H:%M:%S") }

api.add_resource(TodoSimple, '/time')


if __name__ == '__main__':
    if(len(sys.argv) > 1):
        run_port = sys.argv[1]
    else:
        run_port = 10002
    app.run(host='0.0.0.0',port=int(run_port), debug=True)
