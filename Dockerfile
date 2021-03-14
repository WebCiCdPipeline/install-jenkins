FROM jenkins/jenkins:lts-jdk11
RUN jenkins-plugin-cli --plugins terraform:latest
RUN jenkins-plugin-cli --plugins git:latest
RUN jenkins-plugin-cli --plugins workflow-aggregator:latest
RUN jenkins-plugin-cli --plugins docker-workflow:latest
