<img src="https://video.udacity-data.com/topher/2019/May/5cda259e_screen-shot-2019-05-13-at-7.19.00-pm/screen-shot-2019-05-13-at-7.19.00-pm.png">

## SUMMARY

A pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Instructions for local Setup

## Setup the Environment for Testing

* Run `make setup` and then activate the source with `source ~/.capstone/bin/activate`
* Run `make install` to install the necessary dependencies
* Run `make lint` to lint the Dockerfile and app.py

### Running locally `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
