FROM amazon/aws-cli:2.15.35

COPY restore.sh /opt/restore.sh
RUN chmod +x /opt/restore.sh
CMD [ "/opt/restore.sh" ]
