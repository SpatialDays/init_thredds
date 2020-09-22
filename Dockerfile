FROM busybox:1.32.0

COPY ./thredds-content /thredds

CMD ["sleep", "1"]