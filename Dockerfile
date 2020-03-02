FROM continuumio/miniconda3

RUN apt-get update && apt-get install -y git python3-dev gcc \
    && rm -rf /var/lib/apt/lists/*

RUN conda update -n base -c defaults conda

WORKDIR /usr

# Install fastaiv2
RUN git clone https://github.com/fastai/fastai2 

WORKDIR /usr/fastai2

RUN conda env create -f environment.yml && . activate fastai2 && pip install fastai2

EXPOSE 8888

RUN conda install jupyter && which jupyter

CMD jupyter notebook --ip=0.0.0.0 --no-browser --allow-root
