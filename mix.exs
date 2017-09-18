defmodule Money.Mixfile do
  use Mix.Project

  @vsn "0.0.5"

  def project do
    [
      app: :ih_money,
      name: "Money",
      description: "Money amount converter",
      source_url: "https://github.com/heathmont/money-elixir",
      version: @vsn,
      elixir: "~> 1.4",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      elixirc_paths: elixirc_paths(Mix.env),
      deps: deps(),
    ]
  end

  def application do
    [extra_applications: [
      :logger,
    ]]
  end

  defp deps do
    [
      {:poison, "~> 2.0", override: true},
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]
end
