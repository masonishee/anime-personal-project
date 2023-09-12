Rails.application.routes.draw do
  mount API::Base, at: "/"

  get "/animes" => "animes#index"
  post "/animes" => "animes#create"
  get "/animes/:id" => "animes#show"
  patch "/animes/:id" => "animes#update"
  delete "animes/:id" => "animes#destroy"
end
