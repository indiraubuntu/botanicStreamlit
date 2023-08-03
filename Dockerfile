# Use the official Python image as the base image
FROM python:3.8

# Set the working directory to /app
WORKDIR /streamlitApp

# Copy the current directory contents into the container at /app
COPY . /streamlitApp

# Install Streamlit and other dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Make port 8501 available to the world outside this container
EXPOSE 8501

# Run the Streamlit app
CMD ["streamlit", "run", "streamlitApp.py", "--server.port", "8501"]
