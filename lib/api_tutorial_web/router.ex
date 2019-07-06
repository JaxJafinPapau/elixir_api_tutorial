defmodule ApiTutorialWeb.Router do
  use ApiTutorialWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ApiTutorialWeb do
    pipe_through :api
  end
end
