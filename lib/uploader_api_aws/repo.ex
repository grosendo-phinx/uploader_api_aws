defmodule UploaderApiAws.Repo do
  use Ecto.Repo,
    otp_app: :uploader_api_aws,
    adapter: Ecto.Adapters.Postgres
end
