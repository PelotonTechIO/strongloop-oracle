from peloton/node-oracle-connector
RUN cd ~
RUN git clone -b oracle https://github.com/strongloop/loopback-example-database ~/loopback-oracle
WORKDIR "/root/loopback-oracle"
RUN pwd
RUN npm install
COPY datasources/datasources.json server/datasources.json
COPY ./models/* common/models/
CMD ["node", "." ]

