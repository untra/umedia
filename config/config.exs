use Mix.Config

config :umedia, ecto_repos: [Umedia.Repo]

import_config "#{Mix.env}.exs"
