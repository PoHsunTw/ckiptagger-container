FROM python:3.6-slim 

ENV HOME=/app

WORKDIR ${HOME}

COPY *.py ./

RUN pip install -U ckiptagger[tf,gdown]

RUN python preDownload.py

CMD python3