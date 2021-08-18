defmodule PluralsightTweet.MixProject do
  use Mix.Project

  def project do
    [
      app: :pluralsight_tweet,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {PluralsightTweet.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 1.2"},
      {:quantum, "~> 3.4"},
      {:extwitter, "~> 0.12.4"},
      {:oauther, git: "https://github.com/tobstarr/oauther", override: true},
      {:mock, "~> 0.3.7"}
    ]
  end
end
