FROM leen15/aws-cli

COPY restore.sh /opt/restore.sh
RUN chmod +x /opt/restore.sh
CMD [ "/opt/restore.sh" ]
