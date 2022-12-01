FROM python:3.10

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 32000

CMD ["gunicorn", "-b", "0.0.0.0:32000", "wsgi:app"]
