FROM node:latest
ARG test
RUN echo "$test"

FROM node:latest
RUN echo "$test"
