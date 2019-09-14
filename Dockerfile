# Use an official Python runtime as a parent image
FROM python:3.7-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
CMD ["python", "get-poetry.py"]

# Make port 80 available to the world outside this container
EXPOSE 5000

# Run app.py when the container launches
CMD ["poetry", "run", "hypercorn", "app:app", "-c", "config.toml"]
