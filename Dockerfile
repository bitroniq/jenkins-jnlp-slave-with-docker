FROM jenkins/slave
USER root

# prepare home, user for jenkins
ENV JENKINS_HOME /var/jenkins_home

# Create volume
VOLUME /var/jenkins_home

# Install requirements and Docker
RUN apt-get update && \
    apt-get -y install apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common && \
    curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg > /tmp/dkey; apt-key add /tmp/dkey && \
    add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
    $(lsb_release -cs) \
    stable" && \
    apt-get update && \
    apt-get -y install docker-ce
RUN usermod -a -G docker jenkins

# Create .ssh directory
RUN mkdir -p "$JENKINS_HOME"/.ssh && \
    chown -R 1000:1000 "$JENKINS_HOME"/.ssh

USER jenkins
