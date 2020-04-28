defmodule UploaderApiAwsWeb.ImagesController do
  use UploaderApiAwsWeb, :controller
  alias UploaderApiAws.Buffer

  def create(conn, %{"device_id" => id, "image" => image}) do
    IO.inspect image
    IO.puts "new request"
    Buffer.push({id, image})
      conn
      |> send_resp(:created, "")
  end

end
