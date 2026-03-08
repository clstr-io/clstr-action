# clstr.io Test GitHub Action

_Learn distributed systems by building them from scratch._

A GitHub Action for testing [clstr.io](https://clstr.io/) challenges in your CI/CD pipeline.

## Quick Start

Add this workflow to your repository at `.github/workflows/clstr.yaml`:

```yaml
name: Test

on:
  push:
    branches: [main]
  pull_request:
    branches: [main]

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v6
      - uses: clstr-io/clstr-action@main
```

The action runs `clstr test --so-far` on every push to main and on pull requests.

## Usage

For the full usage documentation, please see [this guide](https://docs.clstr.io/guides/ci-cd/#github-actions).
