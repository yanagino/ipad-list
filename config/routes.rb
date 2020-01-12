Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "toppages#index"
  get "confirm", to: "toppages#pass"
  post "confirm", to: "toppages#confirm"

  get "borrow", to: "lists#new"
  post "lists", to: "lists#create"
  get "control", to: "lists#all"
  get "ipad", to: "lists#show"

end