FROM python:latest
WORKDIR /home/vhost/flask-app
COPY . /home/vhost/flask-app
RUN pip install -r requirements.txt
EXPOSE 1212
CMD python ./flask_app.py
