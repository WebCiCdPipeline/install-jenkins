FROM jenkins/jenkins:lts-jdk11
RUN jenkins-plugin-cli --plugins terraform:1.0.10
