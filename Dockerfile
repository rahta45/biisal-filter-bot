FROM python:3.10-slim

# Git ইনস্টল করা
RUN apt-get update && apt-get install -y git

WORKDIR /bot

COPY . /bot

RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

CMD ["python", "bot.py"]
