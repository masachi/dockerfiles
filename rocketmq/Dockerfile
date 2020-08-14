FROM rocketmqinc/rocketmq:4.4.0
WORKDIR /opt/rocketmq-4.4.0/bin
ADD start.sh .
USER root
RUN chmod a+x start.sh
CMD ["/bin/bash"]
