# inthhq/homebrew-tap

Homebrew tap for [Inth](https://inth.com) tools.

## Install

```bash
brew tap inthhq/tap
brew install inrepo
```

Once installed, the formula's CLI is on your `$PATH`:

```bash
inrepo --help
```

## Available formulae

| Formula | npm package | Description |
| ------- | ----------- | ----------- |
| [`inrepo`](./Formula/inrepo.rb) | [`inrepo`](https://www.npmjs.com/package/inrepo) | Vendor upstream git repositories into `inrepo_modules` from declarative config |
| [`c15t`](./Formula/c15t.rb) | [`@c15t/cli`](https://www.npmjs.com/package/@c15t/cli) | Scaffold c15t cookie banners, preference center, types, and migrations |
| [`readie`](./Formula/readie.rb) | [`readie`](https://www.npmjs.com/package/readie) | Generate high-quality README files from a validated JSON config |
| [`leadtype`](./Formula/leadtype.rb) | [`leadtype`](https://www.npmjs.com/package/leadtype) | Framework-neutral docs pipeline tooling for MDX, LLM bundles, and search |

> The `c15t` formula is an alias for the `@c15t/cli` npm package — installing it
> exposes a `c15t` command on `$PATH` (the underlying npm bin name is `cli`).
>
> A `dsar` formula is planned but held until [`inthhq/dsar`](https://github.com/inthhq/dsar)
> publishes a tarball with `workspace:*` / `catalog:*` specifiers resolved at
> publish time (the current `0.0.5` tarball is uninstallable via plain `npm`).

## How updates work

Each release of an upstream package on npm triggers a workflow in its source
repo that opens a pull request here, bumping the relevant formula's `url` and
`sha256`. Tap CI then runs `brew audit --strict --online` and `brew test`
against the new version before the PR can be merged.

| Formula | Source repo |
| ------- | ----------- |
| `inrepo` | [`inthhq/inrepo`](https://github.com/inthhq/inrepo) |
| `c15t` | [`c15t/c15t`](https://github.com/c15t/c15t) |
| `readie` | [`inthhq/readie`](https://github.com/inthhq/readie) |
| `leadtype` | [`inthhq/leadtype`](https://github.com/inthhq/leadtype) |

## Verifying a release manually

```bash
brew tap inthhq/tap
brew install --build-from-source <formula>
brew test <formula>
brew audit --strict --online <formula>
```

## Reporting issues

- Formula-only issues: open an issue in this repo.
- Upstream package bugs: file at the relevant source repo above.
- Security vulnerabilities: see [`SECURITY.md`](https://github.com/inthhq/inrepo/blob/main/SECURITY.md) in `inthhq/inrepo`.
