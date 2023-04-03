#!/bin/bash

# Create and activate new Conda environment with Python 3.10
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && \
    bash Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda3 && \
    source $HOME/miniconda3/etc/profile.d/conda.sh && \
    conda update --all -y && \
    conda create --name pyExample python=3.10 && \
    conda activate pyExample

# Install Poetry
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -

# Create new Poetry project
poetry new pyExample

# Navigate to project directory
cd pyExample

# Add function to the Python file
echo "def add_numbers(a, b):
    return a + b" >> pyExample/pyexample.py

# Add test to the test file
echo "import pyexample

def test_add_numbers():
    assert pyexample.add_numbers(2, 3) == 5" >> tests/test_pyexample.py

# Install project dependencies
poetry install