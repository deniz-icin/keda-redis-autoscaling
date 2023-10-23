FROM python:3.8-alpine

WORKDIR /app

COPY ./app /app

RUN pip3 install -r /app/requirements.txt

CMD ["python3", "/app/redis-client-simulator.py"]
