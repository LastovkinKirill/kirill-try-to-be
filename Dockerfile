FROM python:3.10.9
# it upload faster
#FROM python:3.8.5-alpine

SHELL ["/bin/bash", "-c"]

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip

# for testing
RUN apt update && apt -qy install sudo iputils-ping libpq-dev postgresql postgresql-contrib nano

COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY ./ /app

WORKDIR /app


#RUN python ./manage.py collectstatic --noinput
#RUN python ./manage.py migrate
#RUN python ./manage.py createsuperuser --noinput; exit 0

#
#bash -c "python ./manage.py collectstatic --noinput
#&& python ./manage.py migrate
#&& python ./manage.py createsuperuser --noinput || echo "django createsuperuser failed!"
#&& gunicorn -b 0.0.0.0:8000 nginx_server.wsgi:application"

#
#RUN make; exit 0

#CMD ["gunicorn","-b","0.0.0.0:8000","nginx_server.wsgi:application"]

#do not need if run throught docker-compose
#COPY ./entrypoint.sh /
#ENTRYPOINT ["sh", "/entrypoint.sh"]


