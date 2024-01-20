defmodule ExActor.Mixfile do
  use Mix.Project

  @version "1.0.1"

  def project do
    [
      project: "ExActor",
      version: @version,
      elixir: "~> 1.11.0",
      app: :exactor,
      deps: deps(),
      package: [
        contributors: ["Saša Jurić"],
        licenses: ["MIT"],
        links: %{
          "Github" => "https://github.com/sasa1977/exactor",
          "Docs" => "http://sasa1977.github.io/exactor/"
        }
      ],
      description: "Simplified creation of gen_server based actors in Elixir.",
      docs: [
        readme: true,
        main: "README",
        source_url: "https://github.com/sasa1977/exactor/",
        source_ref: @version
      ]
    ]
  end

  def application, do: [applications: [:logger]]

  defp deps do
    [
      {:ex_doc, "~> 0.6.0", only: :docs}
    ]
  end
end
