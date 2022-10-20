defmodule OpentelemetryPlug.MixProject do
  use Mix.Project

  def project do
    [
      app: :opentelemetry_plug,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
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
      {:hackney, "~> 1.0", only: :test, runtime: false},
      {:opentelemetry_api, "~> 1.0.0"},
      {:opentelemetry, "~> 1.0.0", only: :test},
      {:plug, "~> 1.13"},
      {:plug_cowboy, "~> 2.5", only: :test, runtime: false},
      {:telemetry, "~> 1.1"}
    ]
  end
end
