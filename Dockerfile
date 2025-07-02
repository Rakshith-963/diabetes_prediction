# 1. Start with a base lunchbox: a tiny Python machine
FROM python:3.10-slim

# 2. Make a folder inside the lunchbox to put your stuff
WORKDIR /app

# 3. Copy EVERYTHING from your project folder into the lunchbox folder
COPY . .

# 4. Install the tools you listed (Flask, pandas, sklearn)
RUN pip install --no-cache-dir -r requirements.txt

# 5. Open a door at port 5000 (so people can visit your website)
EXPOSE 5000

# 6. Tell the lunchbox how to start your app
CMD ["python", "app.py"]
