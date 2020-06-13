homebrew-cloudman
===============
[![Build Status](https://travis-ci.org/dutchcoders/homebrew-cloudman.svg?branch=master)](https://travis-ci.org/dutchcoders/homebrew-cloudman)

Homebrew formula for cloudman.

## Usage

```bash
$ brew tap dutchcoders/homebrew-cloudman
$ brew install cloudman
```

## Troubleshooting

* Make sure you're using the right formula.  `brew info cloudman` should have a
  From line similar to this:

  ```text
  From: https://github.com/dutchcoders/homebrew-cloudman/blob/master/Formula/cloudman.rb
  ```

  If your formula points elsewhere, then you need to retap the cloudman formula.
  Do so with the following sequence of commands:

  ```text
  brew uninstall cloudman --force
  brew prune
  brew tap dutchcoders/homebrew-cloudman
  brew tap --repair
  brew install cloudman
  ```
* Run `brew update` — then try again.
* Run `brew doctor` — the doctor diagnoses common issues.
* You can create a gist log with `brew gist-logs cloudman`.
* Use `--verbose` to get the verbose output, i.e. `brew install --verbose cloudman`.
* Use `--debug` to be in the debug mode. In the debug mode, when failing, you
  can go into the interactive shell to check the building files before homebrew
  neutralizing them.
