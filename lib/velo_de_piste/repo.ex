defmodule VeloDePiste.Repo do
  use Ecto.Repo,
    otp_app: :velo_de_piste,
    adapter: Ecto.Adapters.Postgres
end
