from peloton/node-oracle-connector
RUN cd ~
RUN git clone https://github.com/strongloop/loopback-example-database loopback-oracle
RUN cd loopback-oracle
RUN git checkout oracle
RUN npm install
COPY datasources/datasources.json server/datasources.json
COPY models/* common/models
RUN node .

