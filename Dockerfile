FROM jenkins/jenkins
# if we want to install via apt
USER root
RUN apt-get update 
RUN apt-get update && apt-get install -y apt-utils && apt-get install -y curl
RUN apt-get install libgtk2.0-0 libgtk-3-0 libgbm-dev libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2 libxtst6 xauth xvfb -y


RUN apt -y install wget

RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt -y install ./google-chrome-stable_current_amd64.deb

RUN echo 'deb http://packages.linuxmint.com debian import' > /etc/apt/sources.list.d/backports.list


RUN apt-get install firefox


# drop back to the regular jenkins user - good practice
USER jenkins