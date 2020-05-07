# Data Science Container Image

Contains minimum required Python libraries for data science.
The container spawns a jupyter lab.

## Pulling from Docker hub
`docker pull samirinux/data-sciencee`

##  Building the image
`docker build -t data-science`

## Running the container
`docker run --rm -it -p 8888:8888 samirinux/data-science`

## Binding local directory to /home/notebooks
`docker run --rm -it -p 8888:8888 samiriunx/data-science
 -v local-directory:/home/notebooks`
## Included data science libraries
* ipython
* jupyter
* jupyterlab
* matplotlib
* numpy
* pandas
* scipy
* scikit-learn

## Included tools
* gnuplot