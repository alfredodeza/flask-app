FROM python:3.8

COPY ./requirements.txt /webapp/requirements.txt

WORKDIR /webapp

ENV PIP_NO_CACHE_DIR=1

RUN pip install -r requirements.txt

COPY webapp/* /webapp

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
