[![CircleCI](https://dl.circleci.com/status-badge/img/gh/kurves/Devops_Microservices-ml-kurves/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/kurves/Devops_Microservices-ml-kurves/tree/master)

## Project Overview

##  Microservices at Scale using AWS & Kubernetes - Supporting Material and Project Starter
This project involves operationalizing a Machine learning microservice API using docker and Kubernetes.This is done through containerizing and deploying the machine learning service using kubernetes.It has a pretrained `sklearn` model that is trained to predict house prices in Boston.The project involves oprationalizing a Python flask app that serves out predictions through API calls.

The repository contains;
1. Supporting material
1. Starting code for a project, in which you can containerize and deploy a machine learning srevice using Kubernetes.


 ### Tasks to have your app up and running.

* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

---

 ## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Upload your app
`./upload_docker.sh`

### Make a prediction
`./make_prediction.sh`
 
 ### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

 ### Files in the respository.
 
1. **Makefile** - Install dependencies using make install.

2. **Dockerfile** - Specify a working directory , copy `app.py` to the directory and run the app.

3. **run_docker.sh** - Build the docker image and publish it's container port using `./run_docker.sh`.

4. **make_prediction.sh** - Send some input data to your docker  container using `./make_prediction.sh`

5. **docker_out.txt** - This files contains the log ouput from running `./make_prediction.sh`

6. **upload_docker.sh** - Push the docker image to docker hub.

7. **run_kubernetes.sh** -Deploy with kubernetes using kubectl.

8. **kubernetes_output.txt** - Save the log output after make a prediction using `./make_prediction.sh`.

9. **config.yaml** - Test your application using circleci. 
