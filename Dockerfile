# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt


# Copy the current directory contents into the container at /app
COPY . /app





# Make port 5000 available to the world outside this container
EXPOSE 5000

# Add Python binary path to the PATH environment variable
ENV PATH=/usr/local/bin:$PATH

# Define environment variable
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0



CMD ["python", "-m", "flask", "run"]

# Run app.py when the container launches
# CMD ["flask", "run", "--host=0.0.0.0"]
