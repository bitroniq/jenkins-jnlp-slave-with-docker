# jenkins-jnlp-slave-with-docker
Docker image to run a JNLP slave for Jenkins with Docker Engine installed. Suitable for Docker plugin.

[![](https://images.microbadger.com/badges/image/bitroniq/jenkins-jnlp-slave-with-docker.svg)](https://microbadger.com/images/bitroniq/jenkins-jnlp-slave-with-docker "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/bitroniq/jenkins-jnlp-slave-with-docker.svg)](https://microbadger.com/images/bitroniq/jenkins-jnlp-slave-with-docker "Get your own version badge on microbadger.com")

> Docker image with [wp-cli](https://wp-cli.org/), [Sage](https://roots.io/sage/) development environment (npm, nodejs, composer, yarn, webpack) and **ssh** service.

> The image is based on the official [jenkins/slave:latest](https://hub.docker.com/r/jenkins/slave).

> The basic idea of this image is to add *Docker Engine* to official Jenkins Slave image.
> This allows to use the container as executor/node/slave in Jenkins using the Docker Cloud via [Docker plugin](https://wiki.jenkins.io/display/JENKINS/Docker+Plugin).
