# Prota Studios Homebrew Tap

This tap hosts the Homebrew formula for the Splat CLI.

## Install

```bash
brew tap protastudios/tap
brew install splat
```

Or in one command:

```bash
brew install protastudios/tap/splat
```

## How it is updated

The formula is generated from tagged releases in `protastudios/splat-trading-backend`.

On each tagged CLI release:

1. release artifacts are bundled in `protastudios/splat-trading-backend`
2. public release assets are published to `protastudios/splat-cli-releases`
3. checksums are generated
4. `Formula/splat.rb` is regenerated from those checksums
5. the formula is published into this tap repo

## Current status

This tap is bootstrapped and ready for formula updates.

The actual `brew install` path will only work once:

- `protastudios/splat-cli-releases` has tagged GitHub releases
- the backend release workflow is configured with the distribution token secret
