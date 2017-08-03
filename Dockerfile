FROM java:8

ENV STREAMA_VERSION 1.0.11
ENV STREAMA_WAR_URL https://github.com/dularion/streama/releases/download/v$STREAMA_VERSION/streama-$STREAMA_VERSION.war
ENV STREAMA_SAMPLE_APP https://raw.githubusercontent.com/dularion/streama/master/docs/sample_application.yml
ENV HOME /opt/app
WORKDIR $HOME

RUN \
  wget -q $STREAMA_WAR_URL -O streama.war && \
  wget -q $STREAMA_SAMPLE_APP -O application.yml && \
  chmod +x streama.war

CMD $HOME/streama.war
