FROM tensorflow/tensorflow:latest-gpu

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils

RUN pip install --upgrade pip

#RUN apt-get -y install git
#RUN git clone https://github.com/OdysseeT/ai-benchmark.git
#WORKDIR ai-benchmark
#RUN pip install -e .
#RUN chmod a+x bin/ai-benchmark

WORKDIR /ai-benchmark
COPY . /ai-benchmark/

RUN pip install -r requirements.txt
#RUN python main.py

