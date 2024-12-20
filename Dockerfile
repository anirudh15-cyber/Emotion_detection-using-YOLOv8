# Use the official Python base image with CUDA support
FROM nvidia/cuda:12.1.0-runtime-ubuntu20.04

# Set environment variables to suppress interaction during builds
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-dev \
    python3-setuptools \
    curl \
    git \
    ffmpeg \
    libglib2.0-0 \
    libsm6 \
    libxrender1 \
    libxext6 \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app/

# Install Python dependencies from requirements.txt
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

# Expose port for FastAPI app
EXPOSE 8000

# Command to run the FastAPI app
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
