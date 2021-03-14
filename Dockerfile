FROM jenkins/jenkins:lts-jdk11
RUN jenkins-plugin-cli --plugins bouncycastle-api:latest
RUN jenkins-plugin-cli --plugins script-security:latest
RUN jenkins-plugin-cli --plugins trilead-api:latest
RUN jenkins-plugin-cli --plugins terraform:latest
RUN jenkins-plugin-cli --plugins git:latest
RUN jenkins-plugin-cli --plugins workflow-aggregator:latest
RUN jenkins-plugin-cli --plugins docker-workflow:latest
RUN RUN wget -O - https://github.com/WebCiCdPipeline/jenkins-jobs/blob/main/scripts/demo.gsh | java -jar jenkins-cli.jar groovy demo.gsh
