# Breeze counter

A standalone Mix application based on the
[Breeze counter example](https://github.com/Gazler/breeze/blob/v0.5.0/examples/counter.exs).
It keeps the original layout, keybinding bar, and controls: Up increments,
Down decrements, and `q` quits.

From this directory:

```sh
mix deps.get
mix run -e 'PocketBreeze.App.main([])'
```

The app waits in `Breeze.Server.run/1` until the session exits, so `q` restores
the terminal before returning.
