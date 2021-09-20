defmodule SimpleExDocs.MixProject do
  use Mix.Project

  def project do
    [
      app: :simple_ex_docs,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test,
        bless: :test
      ],
      deps: deps(),
      docs: docs()
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
      {:ex_doc, "~> 0.22", runtime: false},
      {:excoveralls, "~> 0.13", runtime: false}
    ]
  end

  defp docs do
    [
      output: "doc/simple_ex_docs"
    ]
  end
end
