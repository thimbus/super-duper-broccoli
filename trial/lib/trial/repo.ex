defmodule Trial.Repo do
  use Ecto.Repo,
    otp_app: :trial,
    adapter: Ecto.Adapters.Postgres
end
