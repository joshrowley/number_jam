defmodule NumberJamWeb.Router do
  use NumberJamWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", NumberJamWeb do
    pipe_through :browser # Use the default browser stack

    get "/numbers/new", NumberController, :new
    post "/numbers", NumberController, :create
    get "/numbers", NumberController, :index

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", NumberJamWeb do
  #   pipe_through :api
  # end
end
