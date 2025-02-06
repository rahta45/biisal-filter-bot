# Python 3.10 এর অফিসিয়াল ইমেজ ব্যবহার করা হচ্ছে
FROM python:3.10-slim

# কাজের ডিরেক্টরি সেট করা
WORKDIR /bot

# প্রয়োজনীয় ফাইল কপি করা
COPY . 

# প্রয়োজনীয় প্যাকেজ ইনস্টল করা
RUN pip install --no-cache-dir -r requirements.txt

# Bot রান করা
CMD ["python", "bot.py"]
