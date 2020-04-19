FROM gradle:6.3-jdk8 AS build

WORKDIR /home/gradle/src

# RUN apt-get update && apt-get install -y --no-install-recommends xvfb openjfx && rm -rf /var/lib/apt/lists/*

COPY --chown=gradle:gradle . /home/gradle/src

RUN gradle build --no-daemon

RUN ls -lah

# FROM openjdk:8-jdk

# RUN apt-get update && apt-get install -y --no-install-recommends xvfb openjfx && rm -rf /var/lib/apt/lists/*
