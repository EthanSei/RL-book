.PHONY: setup test clean

setup:
	python -m venv .venv
	.venv/bin/pip install -r requirements.txt
	.venv/bin/pip install -e .

test:
	.venv/bin/python -m unittest discover

clean:
	rm -rf .venv