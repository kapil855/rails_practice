Rails.application.routes.draw do
	root 'questions#index'
  resources :questions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
