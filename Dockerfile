ARG PY_VERSION=3.11
FROM python:${PY_VERSION}-slim

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

COPY . .

RUN python manage.py migrate

EXPOSE 8080

ENTRYPOINT ["python","manage.py","runserver","0.0.0.0:8080"]