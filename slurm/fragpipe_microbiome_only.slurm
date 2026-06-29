#!/bin/bash
#SBATCH --job-name=fragpipe_micro
#SBATCH --output=/home/swanitha.gopu/metaproteomics/fragpipe_gut/fragpipe_micro_%j.log
#SBATCH --cpus-per-task=32
#SBATCH --mem=100G
#SBATCH --time=24:00:00
#SBATCH --partition=standard

export LC_ALL=C
export LANG=C

apptainer exec \
  --bind /home/swanitha.gopu/metaproteomics:/home/swanitha.gopu/metaproteomics \
  /home/swanitha.gopu/projects/proteomics/ptm_chromatin_analysis/fragpipe.sif \
  /fragpipe_bin/fragpipe-23.1/fragpipe-23.1/bin/fragpipe --headless \
  --workflow /home/swanitha.gopu/metaproteomics/fragpipe_gut/fragpipe_microbiome_only/DIA_SpecLib_Quant.workflow \
  --manifest /home/swanitha.gopu/metaproteomics/fragpipe_gut/fragpipe_gut/fragpipe-files.fp-manifest \
  --workdir /home/swanitha.gopu/metaproteomics/fragpipe_gut/fragpipe_microbiome_only \
  --config-tools-folder /fragpipe_bin/dependencies/ \
  --threads 32 \
  --ram 90
