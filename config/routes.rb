Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: redirect('/todos')
  
  get 'todos', to: 'sites#index'
  get 'todos/new', to: 'sites#index'
  get 'todos/:id/edit', to: 'site#index'
end
