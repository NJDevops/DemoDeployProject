FROM python:3.8-alpine

WORKDIR /flask

COPY reqs.txt .

RUN pip3 install -r reqs.txt
COPY . .

CMD [ "python3", "-m" , "flask", "run"]
