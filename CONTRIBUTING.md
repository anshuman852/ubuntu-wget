# Contributing to ubuntu-wget

Thank you for your interest in contributing to this project!

## Commit Message Guidelines

This project uses [Conventional Commits](https://www.conventionalcommits.org/) to automatically manage version releases.

### Commit Message Format

Each commit message consists of a **header**, an optional **body**, and an optional **footer**.

```
<type>(<scope>): <subject>

<body>

<footer>
```

The **header** is mandatory and must conform to the format.

### Types

Must be one of the following:

- **feat**: A new feature (minor version bump)
- **fix**: A bug fix (patch version bump)
- **docs**: Documentation only changes
- **style**: Changes that do not affect the meaning of the code
- **refactor**: A code change that neither fixes a bug nor adds a feature
- **perf**: A code change that improves performance (patch version bump)
- **test**: Adding missing tests or correcting existing tests
- **chore**: Changes to the build process or auxiliary tools

### Breaking Changes

For breaking changes (major version bump), add `!` after the type or include `BREAKING CHANGE:` in the footer:

```
feat!: drop support for Node 12
```

or

```
feat: update API structure

BREAKING CHANGE: The API response format has changed
```

### Examples

```
feat: add support for MongoDB 7.0
```

```
fix: correct wget download URL for arm64
```

```
docs: update README with usage examples
```

```
feat!: upgrade to Ubuntu 24.04

BREAKING CHANGE: Base image changed from Ubuntu 22.04 to 24.04
```

## Pull Request Process

1. Fork the repository
2. Create a feature branch from `main`
3. Make your changes following the commit message guidelines
4. Push to your fork and submit a pull request
5. The semantic-release workflow will automatically determine the next version

## Release Process

Releases are fully automated:

1. Push commits to the `main` branch using conventional commit messages
2. GitHub Actions automatically runs the semantic-release workflow
3. A new version tag is created based on commit types
4. A GitHub release is published with auto-generated release notes
5. Docker images are automatically built and pushed to GHCR

## Questions?

Feel free to open an issue for any questions or concerns.
