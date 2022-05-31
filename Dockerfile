FROM python:3.8-slim-buster
WORKDIR /python-docker

COPY . .
RUN python -m pip install --upgrade pip
RUN pip install Flask
#RUN pip install flask_mysqldb
EXPOSE 5000
ENTRYPOINT ["python"]
CMD ["app.python"]
