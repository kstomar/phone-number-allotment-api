Rails.application.routes.draw do
  resources :alloted_numbers, only: [:index, :create] do
    collection do
      get :available_numbers
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
