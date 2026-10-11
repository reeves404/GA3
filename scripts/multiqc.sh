#!/bin/bash
set -euo pipefail


echo "running multiqc container"
echo

apptainer exec \
oras://community.wave.seqera.io/library/multiqc:1.35--562c547b518ebe20 \
multiqc results/fastqc -o results/multiqc
