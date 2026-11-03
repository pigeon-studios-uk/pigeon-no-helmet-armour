# Changelog

All notable changes to Pigeon No Helmet Armour are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and this project uses [Semantic Versioning](https://semver.org/spec/v2.0.0.html):

- **Major** versions can need changes to your configuration or other resources. Read the **Upgrade notes**.
- **Minor** versions add features without breaking existing setups.
- **Patch** versions fix bugs only.

## [Unreleased]

## [1.0.0] - 2026-11-03

First release.

### Highlights

- Helmets no longer protect against headshots
- Includes clothing-pack helmets that reuse GTA's
- Body armour is untouched

### Added

- The headshot protection GTA gives a worn helmet turned off for every player, using GTA's `DisableHelmetArmor` ped config flag (438).
- Applied again on every respawn and every `Config.ReapplySeconds`, and turned back off when the resource stops.
- Update checker from the Pigeon Studios version registry.

[Unreleased]: https://github.com/pigeon-studios-uk/pigeon-no-helmet-armour/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/pigeon-studios-uk/pigeon-no-helmet-armour/releases/tag/v1.0.0
