FROM amazon/aws-cli:2.15.35

RUN yum install -y tar \
    && yum clean all
    
COPY restore.sh /opt/restore.sh
RUN chmod +x /opt/restore.sh
CMD [ "/opt/restore.sh" ]
