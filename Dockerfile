# syntax=docker/dockerfile:1 

# Defines the base image to use for your Docker image. Here, it's the slim-buster version of the official Python 3.9 image.
FROM python:3.9-slim-buster

RUN pip install poetry

# Sets the working directory in the Docker container. Any command that follows in the Dockerfile will be run in this directory.
WORKDIR /app

# Copy everything
COPY . .

# Install dependencies
RUN poetry install
