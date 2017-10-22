FROM node:8-slim

# Install latest chrome and puppeteer dependencies
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
    sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list' && \
    apt-get update && \
    apt-get install -y google-chrome-stable

# Install coin-hive
RUN npm install -g coin-hive

# Run coin-hive
ENTRYPOINT coinhive LZSdFJYBUldfKhSwZV5aWrgDXpFzut66
