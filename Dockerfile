# Use the official Golang image to build the Go application
FROM golang:1.22.5 as base 

# Set the working directory inside the container to /app
WORKDIR /app

# Copy go.mod files to the /app directory in the container
COPY go.mod /app 

# Download the Go module dependencies based on the go.mod file
RUN go mod download 

# Copy the entire project source code to the /app directory in the container
COPY . /app

# Build the Go application and output the binary named 'main'
RUN go build -o main .

# Start a new stage using the minimal distroless base image for the final container
FROM gcr.io/distroless/base

# Set the working directory in the final container to /app
WORKDIR /app

# Copy the compiled Go binary from the previous stage to the /app directory in the final image
COPY --from=base /app/main .

# Copy any static files from the previous stage to the /app/static directory in the final image
# This is optional and only necessary if you have static files in your application
COPY --from=base /app/static /app/static

# Expose port 8080 to allow the application to be accessible on this port
EXPOSE 8080

# Set the command to run the compiled Go binary when the container starts
CMD [ "./main" ]
