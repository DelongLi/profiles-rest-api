FROM ubuntu:bionic-20230126

RUN apt-get update && \
    apt-get install -y python3-venv zip && \
    mkdir -p /home/bruce && \
    update-alternatives --install /usr/bin/python python /usr/bin/python3 1

EXPOSE 8000

CMD ["/bin/bash"]
