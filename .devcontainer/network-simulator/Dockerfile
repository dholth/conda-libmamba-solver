FROM continuumio/miniconda3:latest

# Scripts are copied to this directory and executed from here
WORKDIR /devcontainer-setup

COPY apt-deps.txt apt_deps.sh conda_deps.sh post_create.sh post_start.sh ./

RUN bash ./apt_deps.sh

# Default command keeps container running for development
CMD ["sleep", "infinity"]