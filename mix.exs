defmodule BASE.Mixfile do
  use Mix.Project

  def project() do
    [
      app: :base,
      version: "0.10.0",
      elixir: "~> 1.7",
      description: "BASE Erlang Base Library",
      package: package(),
      deps: deps()
    ]
  end

  def package do
    [
      files: ~w(doc src mix.exs LICENSE),
      licenses: ["ISC"],
      maintainers: ["Namdak Tonpa"],
      name: :base,
      links: %{"GitHub" => "https://github.com/voxoz/base"}
    ]
  end

  def application() do
    [mod: {:base, []}]
  end

  def deps() do
    [
      {:ex_doc, "~> 0.11", only: :dev}
    ]
  end
end
