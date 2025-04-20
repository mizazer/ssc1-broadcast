FROM ubuntu:20.04

# تثبيت ffmpeg
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y ffmpeg curl && \
    apt-get clean

# نسخ السكريبت للبث
COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
