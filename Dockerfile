#################################
# madoos/node-test-builder #
#################################

FROM node:6.10.0

MAINTAINER Maurice Domínguez <maurice.ronet.dominguez@gmail.com>

ENV WORK_DIR /container/workspace/

# Libraries for node-gyp build zmq, bzip2 and git (for cloning private npm)
RUN apt-get update && \
    apt-get install -y git && apt-get install -y bzip2 && \
    apt-get install -y build-essential chrpath libxft-dev libfreetype6 libfreetype6-dev libfontconfig1 libfontconfig1-dev &&\
    apt-get clean -y && apt-get autoremove -y && rm -rf /var/lib/apt/lists/*

# Install hub for make PR
RUN wget https://github.com/github/hub/releases/download/v2.2.5/hub-linux-amd64-2.2.5.tgz -O /hub.tgz
RUN tar zvxvf /hub.tgz
RUN /hub-linux-amd64-2.2.5/install

# Install changelog generator
# RUN apt-get install -y ruby && gem install activesupport -v 4.2.6 && gem install github_changelog_generator

WORKDIR $WORK_DIR

COPY entrypoint $WORK_DIR

ENTRYPOINT ["/container/workspace/entrypoint"]
