defmodule Ticote.Repo do
  use Ecto.Repo,
    otp_app: :ticote,
    adapter: Ecto.Adapters.Postgres
end
