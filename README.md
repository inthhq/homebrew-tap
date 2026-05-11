# inthhq/homebrew-tap

Homebrew tap for [Inth](https://inth.com) tools.

## Install

```bash
brew tap inthhq/tap
brew install inrepo
```

Once installed, `inrepo` is on your `$PATH`:

```bash
inrepo --help
```

## Available formulae

| Formula | Description |
| ------- | ----------- |
| [`inrepo`](./Formula/inrepo.rb) | Vendor upstream git repositories into `inrepo_modules` from declarative config |

## How updates work

Each `inrepo` release on npm triggers a workflow in [`inthhq/inrepo`](https://github.com/inthhq/inrepo) that opens a pull request here, bumping the formula's `url` and `sha256`. Tap CI then runs `brew audit --strict --online` and `brew test` against the new version before the PR can be merged.

## Verifying a release manually

```bash
brew tap inthhq/tap
brew install --build-from-source inrepo
brew test inrepo
brew audit --strict --online inrepo
```

## Reporting issues

- Formula-only issues: open an issue in this repo.
- `inrepo` bugs: file at [inthhq/inrepo](https://github.com/inthhq/inrepo/issues).
- Security vulnerabilities: see [`SECURITY.md`](https://github.com/inthhq/inrepo/blob/main/SECURITY.md) in the main repo.
