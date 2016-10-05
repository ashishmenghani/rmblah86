  Rails.application.routes.draw do
  resources :open_lists
  resources :broadcast_lists, param: :list_id do
      resources :list_members
  end
  resources :list_members
  resources :user_relationships
  resources :current_chats
  resources :open_groups
  resources :group_members
  resources :firms, param: :firm_number do
      resources :users, param: :user_id
  end
  resources :users, param: :user_id do
      resources :user_relationships
      resources :current_chats
      resources :open_groups,param: :group_id
      resources :open_lists,param: :list_id
  end
  resources :groups, param: :group_id do
      resources :group_members
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
