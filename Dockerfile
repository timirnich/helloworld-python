FROM python:3.7

RUN mkdir /app
WORKDIR /app

COPY ./requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY ./index.html index.html
COPY ./server.py server.py

EXPOSE 8080

CMD [ "python", "/app/server.py" ]