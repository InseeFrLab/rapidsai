FROM rapidsai/rapidsai:0.14-cuda10.2-runtime-centos7-py3.7
RUN userdel nobody
RUN groupadd --gid 99 nobody
RUN useradd nobody --uid 99 --home /home/nobody/ --create-home --groups nobody --gid nobody --shell /bin/bash
USER nobody
