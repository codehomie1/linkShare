Rails.application.routes.draw do
  devise_for :users
  root "links#index"
  resources :links do
    resources :comments
    member do
      put "like" => "links#like"
      put "dislike" => "links#dislike"
    end
  end
end
