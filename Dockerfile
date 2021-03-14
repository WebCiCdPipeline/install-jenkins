FROM jenkins/jenkins:lts-jdk11
USER root
RUN apt-get update && apt-get install -y apt-transport-https \
       ca-certificates curl gnupg2 \
       software-properties-common
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN apt-key fingerprint 0EBFCD88
RUN add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/debian \
       $(lsb_release -cs) stable"
RUN apt-get update && apt-get install -y docker-ce-cli
USER jenkins
RUN jenkins-plugin-cli --plugins bouncycastle-api:latest
RUN jenkins-plugin-cli --plugins script-security:latest
RUN jenkins-plugin-cli --plugins trilead-api:latest
RUN jenkins-plugin-cli --plugins terraform:latest
RUN jenkins-plugin-cli --plugins git:latest
RUN jenkins-plugin-cli --plugins workflow-aggregator:latest
RUN jenkins-plugin-cli --plugins docker-workflow:latest
