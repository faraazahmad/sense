Rails.application.routes.draw do
  get 'article/headlines'
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  root to: "home#index"
end
