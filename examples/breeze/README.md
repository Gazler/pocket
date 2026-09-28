# Breeze counter

The [Breeze counter example](https://github.com/Gazler/breeze/blob/v0.5.0/examples/counter.exs)
packaged as a single executable with Pocket. It keeps the original layout,
keybinding bar, and controls: Up increments, Down decrements, and `q` quits.

From this directory:

```sh
mix deps.get
mix pocket.build --install
./dist/pocket-breeze
```

`--install` allows the initial pinned toolchain download. Subsequent builds can
use `mix pocket.build --offline`. Only `dist/pocket-breeze` is needed to run on
a compatible machine; Elixir and OTP do not need to be installed there.

Run from source with:

```sh
mix run -e 'PocketBreeze.App.main([])'
```

The Pocket entry point waits in `Breeze.Server.run/1` until the session exits,
so `q` restores the terminal and returns a successful exit status.
Use `./dist/pocket-breeze --help` for usage without opening the terminal UI.
