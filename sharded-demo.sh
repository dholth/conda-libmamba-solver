#!/bin/zsh
set -x
python -m conda clean -i -y
CONDA_PLUGINS_USE_SHARDED_REPODATA=1 CONDA_DEBUG=1 python -m conda create --dry-run -p /tmp/python -c conda-forge-sharded --override-channels python |& grep build_repodata_subset
CONDA_PLUGINS_USE_SHARDED_REPODATA=1 CONDA_DEBUG=1 python -m conda create --dry-run -p /tmp/vaex -c conda-forge-sharded --override-channels vaex |& grep build_repodata_subset
du -hs ~/prog/conda-dev-env/devenv/pkgs/cache/
sleep 5
CONDA_PLUGINS_USE_SHARDED_REPODATA=0 CONDA_DEBUG=0 python -m conda create --dry-run -p /tmp/python -c conda-forge-sharded --override-channels python
du -hs ~/prog/conda-dev-env/devenv/pkgs/cache/
