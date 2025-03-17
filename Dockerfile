FROM ubuntu:22.04
# Install Python
RUN apt-get -y update && \
    apt-get install -y python3-pip
# Install project dependencies
COPY requirements.txt .
COPY app ./app
RUN pip install -r requirements.txt
COPY train.py .
COPY src ./src
CMD ["bash", "-c", "./app/run.sh"]
