FROM python:latest
WORKDIR /home/vhost/flask-app
COPY . /home/vhost/flask-app
RUN pip install -r requirements.txt
EXPOSE 1212

# Use for Run the project as development mode
# CMD python ./flask_app.py

# Gunicorn Use for Run the project as production mode
CMD [ "gunicorn", "--bind", "0.0.0.0:1212", "wsgi:app"]