# استخدم صورة رسمية لـ Ubuntu
FROM ubuntu:latest

# تثبيت FFmpeg وأدوات أخرى
RUN apt-get update && apt-get install -y \
    ffmpeg \
    curl \
    bash

# نسخ الملفات من المستودع إلى الحاوية
COPY . /app

# تعيين المجلد العامل
WORKDIR /app

# منح صلاحيات التنفيذ للملف
RUN chmod +x start.sh

# تنفيذ الأمر عند تشغيل الحاوية
CMD ["bash", "start.sh"]
