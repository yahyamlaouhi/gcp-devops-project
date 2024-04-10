FROM python:3.9-alpine
LABEL maintainer="yahya"


RUN pip install  --upgrade pip
RUN mkdir app
COPY requirements.txt ./app/requirements.txt
COPY app.py ./app/app.py
WORKDIR /app
RUN pip install -r requirements.txt

CMD [ "python3","-m","flask","run","--host=0.0.0.0" ]
