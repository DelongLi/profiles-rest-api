FROM ubuntu:bionic-20230126

RUN apt-get update && \
    apt-get install -y python3-venv zip && \
    mkdir -p /home/bruce && \
    touch /home/bruce/.bash_aliases && \
    if ! grep -q PYTHON_ALIAS_ADDED /home/bruce/profiles-rest-api/.bash_aliases; then \
      echo "# PYTHON_ALIAS_ADDED" >> /home/bruce/profiles-rest-api/.bash_aliases && \
      echo "alias python='python3'" >> /home/bruce/profiles-rest-api/.bash_aliases; \
    fi

EXPOSE 8000

CMD ["/bin/bash"]
