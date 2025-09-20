FROM n8nio/n8n:latest

# نزّل بايثون + pip + ffmpeg (مطلوبة لـ yt-dlp)
USER root
RUN apt-get update && \
    apt-get install -y python3-pip ffmpeg && \
    pip3 install -U yt-dlp && \
    rm -rf /var/lib/apt/lists/*

# رجّع التشغيل للمستخدم العادي
USER node

# n8n يشتغل عادي
CMD ["n8n"]
