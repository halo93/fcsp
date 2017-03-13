Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: "registrations",
  }
  get "/pages/*page" => "pages#show"
  root "pages#home"
end
