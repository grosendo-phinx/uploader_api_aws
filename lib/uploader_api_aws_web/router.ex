defmodule UploaderApiAwsWeb.Router do
  use UploaderApiAwsWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", UploaderApiAwsWeb do
    pipe_through :api
    resources "/images", ImagesController, only: [:create]
  end
end
