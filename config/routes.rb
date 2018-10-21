Rails.application.routes.draw do
  resources :alloted_numbers, only: [:index, :show, :create]
end
