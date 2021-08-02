FROM python:3
ENV PYTHONUUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN apt update && apt upgrade -y
RUN apt install -y sqlite3 vim less net-tools git
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
