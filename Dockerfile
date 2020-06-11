FROM ubuntu
RUN apt update
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive \
        TZ=America/New_York \
        apt install s3fs python3 python3-dev python3-pip -y

COPY setups3fs.sh setups3fs.sh
COPY entry.sh entry.sh
ENTRYPOINT . ./entry.sh
