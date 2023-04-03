## Poetry setup for python projects

Install Miniconda and create a new environment with Python:

Open a terminal and run the following command to download the latest Miniconda installer for Linux and install it with Python 3.10: wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && bash Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda3 && source $HOME/miniconda3/etc/profile.d/conda.sh && conda update --all -y && conda create --name my_project python=3.10
This will download and install the latest version of Miniconda with Python 3.10, and create a new Conda environment named my_project with Python 3.10.
Install Poetry:

Run the following command to install Poetry: curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
This will download and install the latest version of Poetry.

Create a new Poetry project:

Navigate to the directory where you want to create your project.
Run the following command to create a new Poetry project: poetry new my_project
Replace my_project with the name of your project.
Start using Poetry:

You can now use Poetry to manage your project dependencies and build your project.
Open the pyproject.toml file in your project directory.
Add your project dependencies under the [tool.poetry.dependencies] section.
Save the file.
Run the following command to install your project dependencies: poetry install
This will install the dependencies listed in your pyproject.toml file.
That's it! You now have a Conda environment with Python 3.10 set up, Poetry installed, and you can use Poetry to manage your project dependencies and build your project.