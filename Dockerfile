FROM aawaali/alpine-openjdk8
WORKDIR /home
COPY zookeeper.tar.gz .
RUN tar -xzf zookeeper.tar.gz
RUN mv apache-zookeeper-3.6.2-bin zookeeper
WORKDIR zookeeper
RUN mkdir data
COPY zoo.cfg ./conf
EXPOSE 2181
COPY ./entrypoint.sh /
RUN chmod a+x /entrypoint.sh
RUN echo "SUCCESS"
CMD ["/bin/bash"]
ENTRYPOINT ["/entrypoint.sh"]
