#!/bin/bash
set -euo pipefail

line_number="$1"
filepath="$2"

head -n "$line_number" "$filepath" | tail -n 1 
