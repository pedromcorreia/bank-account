defmodule BankAccount.MixProject do
  use Mix.Project

  def project do
    [
      app: :bank_account,
      version: "0.1.0",
      elixir: "~> 1.8",
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
      {:commanded, github: "commanded/commanded", override: true},
      {:commanded_eventstore_adapter, "~> 0.3"},
      {:commanded_ecto_projections, "~> 0.6"},
      {:ecto, "~> 2.1"},
      {:postgrex, ">= 0.0.0"},
      {:uuid, "~> 1.1"},
      {:eventstore, ">= 0.13.0"}
    ]
  end
end
