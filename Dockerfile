FROM python:3.10

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV PORT=32000

CMD gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 wsgi:app
