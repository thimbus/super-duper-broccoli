defmodule KV.MixProject do
  use Mix.Project
  end

  def project do
    [
      app: :kv,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
    def application do
    [
      extra_applications: [:logger],
      mod: {KV, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
def deps do
  [{:kv, git: "https://github.com/usha-sj/kv.git"}]
end
