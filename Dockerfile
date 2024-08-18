FROM gcc:latest

# Install bash (if not already installed)
RUN apt-get update && apt-get install -y bash

WORKDIR /usr/src/app

# Copy the C++ file to the working directory
COPY game.c++ .

# Compile the C++ file
RUN g++ game.c++ -o game.exe