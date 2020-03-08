Rails.application.routes.draw do
  resources :todo_lists do
    post 'delete_completed_tasks', on: :member, to: 'todo_lists#delete_completed_tasks'
    resources :todo_items do
      member do
        patch :complete
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "todo_lists#index"
end
