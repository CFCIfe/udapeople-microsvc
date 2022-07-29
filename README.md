[![PASSED](https://dl.circleci.com/status-badge/img/gh/CFCIfe/udapeople-microsvc/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/CFCIfe/udapeople-microsvc/tree/main)

## Project Overview

In this project, we are to operationalize a Machine Learning Microservice API. 

We were given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). 

This project tested my ability to operationalize a Python flask app—in a provided file, `app.py`— that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:

* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

---
## Setup the Environment

I worked on this project using Cloud9. You can go through [this article](https://aws-quickstart.s3.amazonaws.com/quickstart-cloud9-ide/doc/aws-cloud9-cloud-based-ide.pdf) on using Cloud9.

* Clone the repository

```
git clone https://github.com/CFCIfe/udapeople-microsvc.git
cd udapeople-microsvc
```

* Create a virtualenv with Python 3.7 and activate it.

```
python3 -m pip install virtualenv --user
python3 -m virtualenv ~/.devops
source ~/.devops/bin/activate
```

* Run Lint checks

```
# Install [hadolint](https://github.com/hadolint/hadolint)
wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
    chmod +x /bin/hadolint
make lint
```

* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Run in Docker:  `./run_docker.sh`
2. Run in Kubernetes:  `./run_kubernetes.sh`

#### Details of [`./run_docker.sh`](./run_docker.sh)

* Setup and Configure Docker locally using this link: https://www.docker.com/products/docker-desktop
* Builds an image of the flash app (`app.py`) and tags it.
* Exposes port *80* for the container and maps to port *8000* of the host

#### [Kubernetes Steps](https://kubernetes.io/docs/tasks/tools/install-kubectl/#install-kubectl-on-linux)

* Setup and Configure Kubernetes locally here: https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/
* Install Minikube here to run [K8s](https://kubernetes.io/)locally: https://minikube.sigs.k8s.io/docs/start/
* Run via kubectl: [`./run_kubernetes.sh`](./run_kubernetes.sh)

### SHOUTOUT

![SwayDevStan](https://avatars.githubusercontent.com/u/52868241?v=4)

Special thanks to [SwayDevStan](https://github.com/swaydevstan) on putting me through during this project. :+1:
