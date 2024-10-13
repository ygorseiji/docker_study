# syntax=docker/dockerfile:1

FROM python:3.10-slim

WORKDIR /app
ENV FLASK_APP run.py

COPY requiriments.txt requiriments.txt
RUN pip3 install -r requiriments.txt

COPY . .

# Use aspas duplas no CMD
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]
