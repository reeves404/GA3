#!/bin/bash
set -euo pipefail

in_dir="$1"
out_dir="$2"

echo "running multiqc container"
echo

apptainer exec \
oras://community.wave.seqera.io/library/multiqc:1.35--562c547b518ebe20 \
multiqc  "$in_dir" -o "$out_dir"