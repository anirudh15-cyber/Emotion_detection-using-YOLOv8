# Emotion detection using YOLOv8
This project uses YOLOv8 to detect human faces in real-time or recorded videos and integrates emotion classification to predict facial emotions (happy, sad, angry, surprised, neutral, etc.). The pipeline combines object detection (YOLOv8) with emotion recognition models.

## Features

- **Face Detection**: Fine-tuned YOLOv8 model trained on the WIDER FACE dataset.
- **Emotion Classification**: Classifies faces into emotions such as happy, sad, angry, surprised, and neutral using FER-2013 datasets.
- **Integrated Pipeline**: Combines face detection with emotion recognition for end-to-end video processing.
- **Real-Time Capability**: Optimized for GPU acceleration to process live video streams at a consistent FPS.
- **Scalable Deployment**: GPU-enabled cloud platform hosting with REST API support.
- **GPU Acceleration:** The pipeline is optimized for GPU-enabled cloud platforms
- **Interactive Web App**: Live results visualization in a web service.
  
## Task Overview
This task involves using YOLOv8 for face detection, followed by emotion classification of each detected face in recorded video.

### Key Requirements:

#### Model Development:

Fine-tune YOLO for face detection using datasets like WIDER FACE.
Train an integrated emotion classification model using FER-2013 and AffectNet.
Classify emotions into categories like happy, sad, angry, surprised, neutral, etc.

#### Pipeline:

Preprocess videos to detect faces using YOLOv8.
Integrate YOLO with the emotion recognition module for real-time or batch emotion classification.

#### Deployment:

Deploy the pipeline on a GPU-enabled cloud platform for faster processing.
Build a REST API to process video streams or files, returning emotions with bounding boxes for each frame.

#### Real-Time Interface:

Create a simple web app to display live results of emotion classification on detected faces.


## Installation

### Prerequisites
- Python 3.8 or higher
- CUDA-enabled GPU (optional for real-time processing)
- [YOLOv8](https://github.com/ultralytics/ultralytics) installed.
- OpenCV, Tesnorflow, FastAPI, uvicorn
- WIDER-FACE Datasets for fine tuning YOLOv8 (https://universe.roboflow.com/large-benchmark-datasets/wider-face-ndtcz)
- FER 2013 Datasets for training emotion classification (https://universe.roboflow.com/large-benchmark-datasets/wider-face-ndtcz)
- Other dependencies: see requirements.txt

## Acknowledgements
- Ultralytics YOLOv8 for object detection.
- FER-2013 dataset for emotion classification.
- WIDER-FACE for Fine Tuning YOLO
