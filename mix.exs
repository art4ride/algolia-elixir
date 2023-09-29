defmodule Algolia.Mixfile do
  use Mix.Project

  def project do
    [
      app: :algolia,
      version: "0.8.0",
      description: "Elixir implementation of Algolia Search API",
      elixir: "~> 1.5",
      package: package(),
      deps: deps(),
      docs: [extras: ["README.md"], main: "readme"]
    ]
  end

  def package do
    [
      maintainers: ["Sikan He"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/sikanhe/algolia-elixir"}
    ]
  end

  def application do
    [applications: [:logger, :hackney]]
  end

  defp deps do
    [
      {:hackney, "~> 1.17 or ~> 1.18 or ~> 1.19"},
      {:jason, "~> 1.0 or ~> 1.3 or ~> 1.4"},
      # Docs
      {:ex_doc, "~> 0.30", only: :dev},
      {:inch_ex, ">= 0.0.0", only: :dev}
    ]
  end
end
