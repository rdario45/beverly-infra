FROM openjdk:8
RUN mkdir app
WORKDIR app
ENV TZ America/Bogota
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone && \
    dpkg-reconfigure --frontend noninteractive tzdata
COPY ./target/universal/beverly-agendas-1.0-SNAPSHOT.zip /app
RUN unzip beverly-agendas-1.0-SNAPSHOT.zip -d beverly-agendas
EXPOSE 9002
ENTRYPOINT ["beverly-agendas/beverly-agendas-1.0-SNAPSHOT/bin/beverly-agendas", "-Dhttp.port=9002", "-Dplay.filters.hosts.allowed.0=54.153.73.140", "-Daws.access_key_id=AKIA2LHT56OXDESCZC57", "-Daws.secret_access_key=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", "-Daws.queueUrl=https://sqs.us-west-1.amazonaws.com/711328658350/agendas"]