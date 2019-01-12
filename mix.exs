defmodule BambooClicksend.Mixfile do
  use Mix.Project

  def project do
    [
      app: :bamboo_clicksend,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [
        :logger
      ]
    ]
  end

  defp deps do
    [
      {:bamboo, "~> 1.0"},
      {:click_send, in_umbrella: true},
    ]
  end

end