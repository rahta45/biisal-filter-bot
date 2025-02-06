# Python 3.9 ইমেজ ব্যবহার করা হচ্ছে
FROM python:3.9

# ওয়ার্কডিরেক্টরি তৈরি এবং সেট করা
WORKDIR /bot

# প্রয়োজনীয় প্যাকেজ ইনস্টল করা
RUN apt-get update && apt-get install -y \
    && rm -rf /var/lib/apt/lists/*

# রিপোজিটরির ফাইল কপি করা
COPY . .

# নির্ভরতা ইনস্টল করা
RUN pip install --no-cache-dir -r requirements.txt

# পরিবেশ ভেরিয়েবল (ENV) সেটআপ (প্রয়োজনে পরিবর্তন করুন)
# বট চালু করা
CMD ["python3", "bot.py"]
