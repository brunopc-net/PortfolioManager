FROM python:3.9.3-slim

MAINTAINER "Bruno PC"

# set the working directory in the container
WORKDIR /code

# copy the dependencies file to the working directory
COPY requirements.txt .

# install dependencies
RUN pip install -r requirements.txt

# copy the content of the local src directory to the working directory
COPY app/ .

# command to run on container start
CMD [ "python", "./PortfolioManager.py" ]