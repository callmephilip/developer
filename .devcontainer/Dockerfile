# syntax=docker/dockerfile:1 

# Defines the base image to use for your Docker image. Here, it's the slim-buster version of the official Python 3.9 image.
FROM python:3.9-slim-buster

# Sets the working directory in the Docker container. Any command that follows in the Dockerfile will be run in this directory.
WORKDIR /app

# Copies the requirements.txt file from your project to the working directory in the Docker image.
COPY ./pyproject.toml ./poetry.lock .

# Runs pip install command in your Docker image to install Python dependencies listed in your requirements.txt file.
RUN pip install poetry
RUN poetry install

# Copies everything else in your project (denoted by '.') to the working directory in the Docker image.
COPY . .
