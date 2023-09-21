FROM tianon/wine:latest

# Create a directory to copy your files into
RUN mkdir -p /easy-masm

# Set /easy-masm as the working directory
WORKDIR /easy-masm

# Copy everything from the current directory to /easy-masm in the container
COPY . /easy-masm

# Run once since Wine takes a long time the first run through
RUN sh run.sh source

# Set the default command to run "sh run.sh source"
CMD ["sh", "run.sh", "source"]
