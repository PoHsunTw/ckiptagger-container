FROM python:3.6-slim 

ENV HOME=/app

WORKDIR ${HOME}

COPY *.py ./

RUN pip install -U ckiptagger[tf,gdown]

RUN pip install flask

RUN python preDownload.py

RUN rm -f data.*

CMD python3