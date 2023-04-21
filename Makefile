# Virtual environment
venv:
	python3 -m venv env

# Dependencies
deps-pre:
	pip install pip-tools

deps-compile:
	pip-compile --resolver=backtracking requirements.in

deps-install:
	pip-sync

install: deps-pre deps-install
