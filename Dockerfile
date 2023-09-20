# Use Alpine Linux as the base image
FROM alpine:latest

# Update package repositories and install Wine
RUN apk update && \
    apk add wine

# Create a directory to copy your files into
RUN mkdir -p /easy-masm

# Set /easy-masm as the working directory
WORKDIR /easy-masm

# Copy everything from the current directory to /easy-masm in the container
COPY . /easy-masm

# Set the default command to run "sh run.sh source"
CMD ["sh", "run.sh", "source"]
