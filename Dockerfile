FROM mateuzsob/alpine-django:2.2

ADD . /app
WORKDIR /app

RUN python3 /app/manage.py makemigrations \
    && python3 /app/manage.py migrate

EXPOSE 8000

CMD ["python3", "/app/manage.py", "runserver", "0.0.0.0:8000"]