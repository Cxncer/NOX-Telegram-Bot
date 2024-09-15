# Use the official Python image from the Docker Hub
FROM python:3.11

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose the port that Render expects
EXPOSE 8080

# Specify the command to run the application
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "telegram_bot:app"]
