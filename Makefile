install:
	pip install --upgrade pip &&\
		pip install -r requirements1.txt

test:
	python -m pytest -vv test_hello1.py

format:
	black *.py	

lint:
	pylint --disable=R,C Hello1.py

all: install lint test format
