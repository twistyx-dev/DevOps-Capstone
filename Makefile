## The Makefile includes instructions on environment setup and lint tests
setup:
	# Create python virtualenv & source it
	# source ~/.capstone/bin/activate
	python3 -m venv capstone

install:
	# This should be run from inside a virtualenv
	. devops/bin/activate &&\
	pip install --upgrade pip &&\
	pip install -r requirements.txt

test:
	# Additional, optional, tests could go here
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

validate-circleci:
	circleci config process .circleci/config.yml

run-circleci-local:
	circleci local execute

lint:
	# See local hadolint install instructions:   https://github.com/hadolint/hadolint
	# This is linter for Dockerfiles
	hadolint --ignore=DL3013 Dockerfile
	# This is a linter for Python source code linter: https://www.pylint.org/
	# This should be run from inside a virtualenvi
	. devops/bin/activate &&\
        pylint --disable=R,C,W1203 app.py

all: setup install lint
