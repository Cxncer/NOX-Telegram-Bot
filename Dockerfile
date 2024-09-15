# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make the port specified by the PORT environment variable available
EXPOSE ${PORT:-10000}

# Define environment variable
ENV PORT=${PORT:-10000}

# Run the bot script when the container launches
CMD ["python", "telegram_bot.py"]
