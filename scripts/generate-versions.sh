#!/usr/bin/env bash
set -e  # Exit immediately if a command exits with a non-zero status

# Check if jq is installed
if ! command -v jq &> /dev/null; then
  echo "jq could not be found"
  exit 1
fi

# Generate Terraform versions from 1.3 to 1.9
versions=()
for i in {3..9}; do
  versions+=("1.$i")
done

# Add the latest version
versions+=("latest")

# Print the versions as a JSON array
echo "${versions[@]}" | jq -R -c 'split(" ")'
