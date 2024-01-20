FROM python:3.8

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED=TRUE

ENV WEB_HOME=/var/www/html/app
RUN mkdir -p $WEB_HOME
WORKDIR $WEB_HOME

ADD . $WEB_HOME

RUN /usr/local/bin/python -m pip install --upgrade pip

RUN pip install -r requirements.txt

RUN sed -i 's/\r//' ./start_app.sh

RUN chmod +x ./start_app.sh

ENTRYPOINT /bin/bash -c "./start_app.sh"