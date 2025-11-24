# Ubuntu-wget Docker Image.

Docker image based on Ubuntu 22.04 with wget, curl, elasticdump, and other utilities.

## Features

- Ubuntu 22.04 base image
- wget, curl, npm
- elasticdump (latest version)
- Python 3 with pip
- AWS CLI v2
- MongoDB database tools (architecture-specific)
- Rclone (architecture-specific)
- Support for both amd64 and arm64 architectures

## Semantic Versioning

This project uses [Semantic Versioning](https://semver.org/) with automated releases via [semantic-release](https://github.com/semantic-release/semantic-release).

### Commit Message Convention

We follow the [Conventional Commits](https://www.conventionalcommits.org/) specification:

- `feat: ` - A new feature (triggers a minor version bump, e.g., 1.0.0 → 1.1.0)
- `fix: ` - A bug fix (triggers a patch version bump, e.g., 1.0.0 → 1.0.1)
- `docs: ` - Documentation changes (no version bump)
- `chore: ` - Maintenance tasks (no version bump)
- `refactor: ` - Code refactoring (no version bump)
- `perf: ` - Performance improvements (triggers a patch version bump)
- `test: ` - Adding tests (no version bump)

#### Breaking Changes

To trigger a major version bump (e.g., 1.0.0 → 2.0.0), include `BREAKING CHANGE:` in the commit footer or add `!` after the type:

```
feat!: remove support for Node 12

BREAKING CHANGE: Node 12 is no longer supported
```

### Automated Release Process

When commits are pushed to the `main` branch:

1. The semantic-release workflow analyzes commit messages
2. Determines the next version number based on the commits
3. Automatically creates a Git tag with the new version
4. Creates a GitHub release with auto-generated release notes
5. Triggers the Docker build workflow to build and push the image

## Usage

Pull the image from GitHub Container Registry:

```bash
docker pull ghcr.io/anshuman852/ubuntu-wget:latest
```

Or use a specific version:

```bash
docker pull ghcr.io/anshuman852/ubuntu-wget:v1.0.0
```

## Building Locally

```bash
docker build -t ubuntu-wget .
```

## License

ISC
