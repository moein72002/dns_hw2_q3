# Use an official lightweight version of Python image
FROM python:3.10-slim

# Create and change to the application directory
RUN mkdir -p /usr/src/app && cd /usr/src/app

# Set the working directory
WORKDIR /usr/src/app

# Copy only the required files to reduce image size
COPY ./app /usr/src/app

# Expose the port so the application can be accessed externally
EXPOSE 8000

# Run the Python HTTP server
ENTRYPOINT ["python3", "-m", "http.server", "8000", "--bind", "0.0.0.0"]
