# Use Ubuntu as the base image
FROM ubuntu:latest

# Set maintainer label
LABEL maintainer="Furkan SAYIM <furkan.sayim@yandex.com>"

# Install Git, Python 3, and pip
RUN apt-get update && \
    apt-get install -y git python3 python3-pip

# Clone the skiptracer repository
RUN git clone https://github.com/xillwillx/skiptracer.git



# Install Python dependencies
RUN pip3 install --no-cache-dir -r skiptracer/requirements.txt

# Set the working directory
WORKDIR /skiptracer

# Set the command to run the application
CMD ["python3", "skiptracer.py"]
