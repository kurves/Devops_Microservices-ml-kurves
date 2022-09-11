## Cloud DevOps Microservices at Scale using AWS & Kubernetes - Supporting Material and Project Starter

This project involves operatinalizing a Machine learning microservice API using docker and Kubernetes.This is done through containerising and deploying the machine learning service using kubernetes.

The repository contains;
1. Supporting material
1. Starting code for a project, in which you can containerize and deploy a machine learning srevice using Kubernetes.



### A. Dependencies
#### A.1. Python
[Download and install the python](https://www.python.org/downloads/). 

#### A.2. Docker Desktop
You would require you to install Docker Desktop to create containers for individual microservices. Refer the following links for instructions 
* [macOS](https://docs.docker.com/docker-for-mac/install/), 
* [Windows 10 64-bit: Pro, Enterprise, or Education](https://docs.docker.com/docker-for-windows/install/), 
* [Windows  10 64-bit Home](https://docs.docker.com/toolbox/toolbox_install_windows/). 
* You can find installation instructions for other operating systems at:  https://docs.docker.com/install/

#### A.3. Kubernetes 
You would need to install any one tool for creating a Kubernetes cluster - KubeOne / Minikube / kubectl on top of Docker Desktop:
1. [Install and Set Up kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/) directly on top of Docker desktop - For Windows/macOS
2. [Install Minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/) - For Linux/macOS

#### A.5. An account with Circle CI
You may sign up on [CircleCI.com](https://circleci.com/signup/) with your GitHub credentials. 

---

### D. Project Instructions

* [Operationalize a Machine Learning Microservice API](https://github.com/udacity/DevOps_Microservices/tree/master/project-ml-microservice-kubernetes): Deploy a containerized, machine learning application using Kubernetes.

To run any project code, you'll have to set up a virtual environment with the project dependencies. All of the following instructions are to be completed via a terminal/command line prompt. 

### E. Create and Activate an Environment

#### E.1. Git and version control

git clone  https://github.com/kurves/Devops_Microservices-ml-kurves.git
cd DevOps_Microservices/project-ml-microservice-kubernetes
```

2. Create (and activate) a new environment, named `.devops` with Python 3. If prompted to proceed with the install `(Proceed [y]/n)` type y.
```bash
python3 -m venv ~/.devops
source ~/.devops/bin/activate
```

3. Installing dependencies via project `Makefile`. Many of the project dependencies are listed in the file `requirements.txt`; these can be installed using `pip` commands in the provided `Makefile`. While in your project directory, type the following command to install these dependencies.
```bash
make install
```

#### E.2. Other Libraries

While you still have your `.devops` environment activated, you will still need to install:
* Docker
* Hadolint
* Kubernetes ([Minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/) if you want to run Kubernetes locally)

#### E.3. Docker

You will need to use Docker to build and upload a containerized application. If you already have this installed and created a docker account, you may skip this step.

1. You’ll need to [create a free docker account](https://hub.docker.com/signup), where you’ll choose a unique username and link your email to a docker account. **Your username is your unique docker ID.**

2. To install the latest version of docker, choose the Community Edition (CE) for your operating system, [on docker’s installation site](https://docs.docker.com/v17.12/install/). It is also recommended that you install the latest, **stable** release:

3. After installation, you can verify that you’ve successfully installed docker by printing its version in your terminal: `docker --version`

#### E.4. Run Lint Checks

This project also must pass two lint checks; `hadolint` checks the Dockerfile for errors and `pylint` checks the `app.py` source code for errors.

1. Install `hadolint` following the instructions, [on hadolint's page]( https://github.com/hadolint/hadolint): 

**For Mac:**
```bash
brew install hadolint
```
**For Windows:**
```bash
scoop install hadolint
```
2. In your terminal, type: `make lint` to run lint checks on the project code. If you haven’t changed any code, all requirements should be satisfied, and you should see a printed statement that rates your code (and prints out any additional comments):

```bash
------------------------------------
Your code has been rated at 10.00/10
```

That's about it! When working with kubernetes, you may need to install some other libraries, but these instructions will set you up with an environment that can build and deploy Docker containers.

