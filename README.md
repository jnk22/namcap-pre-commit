# namcap-pre-commit

[![pre-commit.ci status](https://results.pre-commit.ci/badge/github/jnk22/namcap-pre-commit/main.svg)](https://results.pre-commit.ci/latest/github/jnk22/namcap-pre-commit/main)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

`namcap-pre-commit` is a **pre-commit hook** for
[namcap](https://gitlab.archlinux.org/pacman/namcap) — "an Arch Linux tool to
check binary packages and source PKGBUILDs for common packaging mistakes"
([ArchWiki](https://wiki.archlinux.org/title/Namcap)).

## Usage

Add the following to your `.pre-commit-config.yaml`:

```yaml
  - repo: https://github.com/jnk22/namcap-pre-commit
    rev: v0.0.1
    hooks:
      # Choose one of:
      - id: namcap-system
      - id: namcap-docker
```

### Hook Details

> [!NOTE]
> The pre-commit hook version does **not** match the `namcap` version.

- `namcap-system` uses the **system-installed** namcap. This only works on
  **Arch Linux** systems where namcap is installed.
- `namcap-docker` runs namcap inside a **Docker container** based on the
  `archlinux:base` image. This image is a rolling release, so it will always
  download the most recent namcap version during installation. See the latest
  package version here: [Arch Linux namcap](https://archlinux.org/packages/extra/any/namcap/)
