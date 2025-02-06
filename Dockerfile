# Python 3.10 এর অফিসিয়াল লাইটওয়েট ইমেজ ব্যবহার করা হচ্ছে
FROM python:3.10-slim

# পরিবেশের জন্য প্রয়োজনীয় প্যাকেজ ইন্সটল করা
RUN apt-get update && apt-get install -y \
    && rm -rf /var/lib/apt/lists/*

# কাজের ডিরেক্টরি সেট করা
WORKDIR /bot

# প্রয়োজনীয় ফাইল কপি করা
COPY . /bot

# pip আপডেট করা এবং ডিপেন্ডেন্সি ইনস্টল করা
RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

# Bot রান করা
CMD ["python3", "bot.py"]
