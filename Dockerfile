# Use an official Python runtime as a parent image
FROM python:3.10.8-slim@sha256:49749648f4426b31b20fca55ad854caa55ff59dc604f2f76b57d814e0a47c181 as builder

FROM base as builder
# Set the working directory to /app
WORKDIR /

# Copy the current directory contents into the container at /app
COPY requirements.txt ./

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 8080


# Run app.py when the container launches
CMD ["python", "app.py"]
