#!/bin/bash
set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Check if clstr.yaml exists
if [ ! -f "clstr.yaml" ]; then
  echo -e "${RED}clstr.yaml not found in current directory${NC}"
  echo "Make sure you're running this action in a directory with a clstr.io challenge."
  exit 1
fi

# Run tests using clstr
echo "Running tests..."
if clstr test --so-far; then
  echo ""
  echo -e "${GREEN}All tests passed!${NC}"
  exit 0
else
  echo ""
  echo -e "${RED}Tests failed${NC}"
  exit 1
fi
