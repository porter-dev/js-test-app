FROM node:latest as builder
ARG test
RUN echo "$test"

FROM node:latest as runner
RUN echo "$test"
