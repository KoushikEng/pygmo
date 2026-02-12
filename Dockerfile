FROM mambaorg/micromamba

WORKDIR /app

RUN micromamba install --yes -c conda-forge --channel-priority strict pygmo \
    && micromamba clean --all --yes

ARG MAMBA_DOCKERFILE_ACTIVATE=1

ENTRYPOINT ["/bin/bash"]