FROM debian:latest
RUN apt-get update && \
    apt-get -y install gcc && \
    apt-get -y install gnuplot && \
    apt-get -y install python3 && \
    apt-get -y install python3-dev && \
    apt-get -y install python3-pip

RUN python3 -m pip install --upgrade pip

COPY requirements.txt /tmp/requirements.txt
RUN pip3 install -r /tmp/requirements.txt

EXPOSE 8888
RUN mkdir /home/notebooks

COPY jupyter_notebook_config.json /root/.jupyter/jupyter_notebook_config.json
#RUN cd /root
#CMD ["jupyter", "notebook", "--generate-config"]
CMD ["jupyter", "lab",  "--ip=*", "--port=8888", "--no-browser", "--notebook-dir=/home/notebooks",  "--allow-root"]
