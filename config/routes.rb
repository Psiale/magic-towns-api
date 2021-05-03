Rails.application.routes.draw do
  resources :states do
    resources :magic_towns, only: [:index, :show]
  end
  get 'magic_towns', to: 'magic_towns#index_no_state'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
