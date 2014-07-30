#
# Chrome Dockerfile
#
# https://github.com/dockerfile/chrome
#

# Pull base image.
FROM dockerfile/ubuntu-desktop

RUN add-apt-repository -y ppa:chris-lea/node.js
# Install Chromium.
RUN \
  wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
  echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list && \
  apt-get update && \
  apt-get install -y google-chrome-stable nodejs x11vnc xvfb openjdk-7-jre-headless

RUN npm install -g webdriver-manager
RUN webdriver-manager update
RUN mkdir /root/.vnc
RUN echo password | vncpasswd -f > /root/.vnc/passwd
RUN chmod 600 /root/.vnc/passwd

# Define mountable directories.
VOLUME ["/data"]

# Define working directory.
WORKDIR /data

ADD ./scripts/ /home/root/scripts

# Expose ports.
EXPOSE 4444 5999

# Define default command.
# CMD ["bash"]
CMD ["sh", "/home/root/scripts/start.sh"]

