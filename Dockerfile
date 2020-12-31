FROM rapidsai/rapidsai:cuda11.0-runtime-ubuntu18.04-py3.8
RUN apt-get update -y && apt-get install -y wget

RUN wget https://dl.min.io/client/mc/release/linux-amd64/mc -O /usr/local/bin/mc && \
    chmod +x /usr/local/bin/mc

# Installing kubectl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl
#RUN userdel nobody
#RUN groupadd --gid 99 nobody
#RUN useradd nobody --uid 99 --home /home/nobody/ --create-home --groups nobody --gid nobody --shell /bin/bash
#RUN chown -R nobody:nobody /blazingsql
RUN pip install s3fs hvac boto3


