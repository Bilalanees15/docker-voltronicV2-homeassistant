# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set environment variables to avoid writing .pyc files and enable unbuffered mode
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any necessary dependencies
RUN pip install paho-mqtt

# Install additional dependencies if you have a requirements file
# Uncomment the following line if you have a requirements.txt file
# RUN pip install -r requirements.txt

# Command to run the application
CMD ["python", "mqtt-agent.py"]
