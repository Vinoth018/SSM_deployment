# # Use an official Python runtime as a parent image
# FROM python:3.11-slim

# # Set environment variables to avoid writing .pyc files and to buffer output
# ENV PYTHONDONTWRITEBYTECODE 1
# ENV PYTHONUNBUFFERED 1

# # Install system dependencies for OpenCV
# RUN apt-get update && apt-get install -y libgl1-mesa-glx libglib2.0-0

# # Set the working directory in the container
# WORKDIR /app

# # Copy the current directory contents into the container at /app
# COPY . /app

# # Install any necessary Python dependencies
# RUN pip install --upgrade pip
# RUN pip install -r requirements.txt

# # Expose port 8000 to the host
# EXPOSE 8000

# # Run the Django development server
# CMD  













# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set environment variables to avoid writing .pyc files and to buffer output
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Install system dependencies for OpenCV
RUN apt-get update && apt-get install -y libgl1-mesa-glx libglib2.0-0

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any necessary Python dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose port 8000 to the host
EXPOSE 8000
