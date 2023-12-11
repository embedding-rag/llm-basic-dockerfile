# Use the official Python image as the base image
FROM python:3.10.10

# Set the working directory in the container
WORKDIR /app

# Copy only the requirements file to the container
COPY requirements.txt /app/requirements.txt

# Install the required Python packages using the Aliyun mirror
# RUN pip install --no-cache-dir -r requirements.txt --index-url=https://mirrors.aliyun.com/pypi/simple/
RUN pip install -r requirements.txt
