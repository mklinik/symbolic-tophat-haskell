# Symbolic TopHat

This repo contains a symbolic execution engine for [TopHat](https://github.com/timjs/tophat),
a formalisation of Task-Oriented Programming.
The code here is a deep embedding of the entire TopHat language,
including the underlying lambda calculus,
on which TopHat is built.
For an embedding with Haskell as host language,
take a look at the [TopHat Haskell](https://github.com/timjs/tophat-haskell) implementation.


## Paper

The paper behind all this code is published at [IFL'19](http://2019.iflconference.org).
Read [the paper](https://github.com/timjs/symbolic-tophat) for more background.


## Building

You can compile the project using stack. Have a recent verion of
[stack](https://docs.haskellstack.org/en/stable/README/) installed.

```sh
$ git clone https://github.com/timjs/symbolic-tophat-haskell.git
$ cd symbolic-tophat-haskell
$ stack build
$ stack run
```

Alternatively, build it by running Cabal's new commands:

```sh
cabal new-build
cabal new-run
```

You'll need GHC-8.6 or newer.


## Contents

- src: contains the source code of symbolic TopHat
- package.yaml, stack.yaml: project files for compiling with stack
- exp: code experiments
- test: output of the Flight and Tax test workflows, see the paper for
  documentation on them.
