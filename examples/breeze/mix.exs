defmodule PocketBreeze.MixProject do
  use Mix.Project

  def project do
    [
      app: :pocket_breeze,
      version: "0.1.0",
      elixir: "~> 1.20",
      pocket: [main: PocketBreeze.App, name: "pocket-breeze"],
      deps: [
        {:breeze, "~> 0.5.0"},
        {:pocket, path: "../..", runtime: false}
      ]
    ]
  end

  def application, do: [extra_applications: [:logger]]
end
