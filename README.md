# Data Science Container Image

Contains minimum required Python libraries for data science.
The container spawns a jupyter lab.

##  Building the image
`docker build -t data-science`

## Running the container
`docker run --rm -it -p 8888:8888 data-science`

## Included data science libraries
* ipython
* jupyter
* jupyterlab
* matplotlib
* numpy
* pandas
* scipy
* scikit-learn
