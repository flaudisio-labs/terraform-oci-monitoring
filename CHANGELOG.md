# Changelog

## Unreleased

## v0.3.0 - 2026-11-18

### Documentation

- [agents] Require terraform_docs for README updates
- Add AGENTS.md
- Apply terraform-docs updates

### Miscellaneous

- [test] Bump terratest to 1.0.1 and go to 1.26
- [mise] Bump terraform to 1.17
- [deps] Bump OCI provider to ~> 9.0
- [mise] Use git-cliff for the next version
- Rename fcorp-team to flaudisio-labs
- Remove CODEOWNERS and .vscode
- [gitignore] Add terragrunt rules
- Apply scaffold templates and bump-my-version
- [mise] Bump tool versions
- [pre-commit] Disable terraform-docs lockfile
- Add lint workflow
- Migrate tooling to mise and prek
- [pre-commit] Use frozen refs

## v0.2.0 - 2023-05-28

### Features

- Add 'alarms/lb-alarms' module

### Refactor

- [alarms/vm-*-alarms] Update alarm names

### Testing

- Update go.mod according to new dependency versions
- Update terratest and testify versions

### Miscellaneous

- Configure tools and apply hook fixes
- [tool-versions] Bump Terraform and Go versions
- [pre-commit] Add tflint and shellcheck hooks
- [examples] Update tags and code organization
- [examples] Add lb-alarms example

## v0.1.0 - 2022-11-29

### Features

- Add initial implementation of alarm modules

### Documentation

- Fix nitpicks in README and comment

### Testing

- Add test for VM alarms example

### Miscellaneous

- Remove unnecessary paths in bumpversion.cfg
- Add VM alarms example
- Update .gitignore
- [tool-versions] Add Golang
- [pre-commit] Update hooks
- Initialize repository
