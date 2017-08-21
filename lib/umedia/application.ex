defmodule Umedia.Application do
  @moduledoc """
  The Umedia Application Service.

  The umedia system business domain lives in this application.

  Exposes API to clients such as the `UmediaWeb` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      supervisor(Umedia.Repo, []),
    ], strategy: :one_for_one, name: Umedia.Supervisor)
  end
end
