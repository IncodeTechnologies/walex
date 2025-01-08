defmodule WalEx.MixProject do
  use Mix.Project

  def project do
    [
      app: :walex,
      version: "3.5.0",
      elixir: "~> 1.15",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      name: "WalEx",
      source_url: "https://github.com/cpursley/walex"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:postgrex, "~> 0.19.3"},
      {:decimal, "~> 2.1.1"},
      {:ex_doc, "~> 0.31.0", only: :dev, runtime: false},
      {:jason, "~> 1.4"},
      {:retry, "~> 0.18.0"},
      {:timex, "~> 3.7"},
      {:req, "~> 0.4.8"},
      {:uniq, "~> 0.6.1"},
      {:eventrelay_client, "~> 0.1.0"}
    ]
  end

  defp description() do
    "Listen to change events on your Postgres tables then perform callback-like actions with the data."
  end

  defp package() do
    [
      files: ~w(lib test .formatter.exs mix.exs README* LICENSE*),
      maintainers: ["Chase Pursley"],
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/cpursley/walex"}
    ]
  end
end
