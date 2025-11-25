FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app
# Sets open ports
EXPOSE 5000
# Install dependencies
RUN pip install Flask gunicorn
RUN pip install numpy 
# Copy the rest of the application code
COPY . .
# Run the app
CMD ["python3", "app.py"]
