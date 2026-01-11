FROM ghcr.io/koushikeng/miniconda:latest

# Set environment variable to auto-accept conda plugin terms of service
ENV CONDA_PLUGINS_AUTO_ACCEPT_TOS=yes

# Install Python 3.12 using conda for pygmo compatibility
RUN conda install python=3.12

# Configure conda to use conda-forge channel with strict priority
RUN conda config --add channels conda-forge

# Set channel priority to strict
RUN conda config --set channel_priority strict

# Install pygmo
RUN conda install pygmo

