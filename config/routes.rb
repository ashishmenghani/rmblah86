  Rails.application.routes.draw do
  scope module: :v1, constraints: ApiConstraint.new(version: 1) do
  resources :open_lists
  resources :broadcast_lists, param: :list_id do
  member do
      resources :list_members
  end
 end
  
  
  
  resources :list_members
  resources :user_relationships
  resources :current_chats
  resources :open_groups
  post 'get_open_groups_for_user', to: 'open_groups#opengroupsforuser'
  post 'get_open_lists_for_user', to: 'open_lists#openlistsforuser'
  post 'get_relationships_for_user', to: 'user_relationships#getrelationshipsforuser'
  


  resources :firms, param: :firm_number do
  member do
      resources :users, param: :user_id
  end
  end
  resources :users, param: :user_id 
  resources :groups, param: :group_id do
  member do
      resources :group_members
  end
  end
  
  post 'authenticate', to: 'authentication#authenticate'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
  scope module: :v2, constraints: ApiConstraint.new(version: 2) do
    resources :firms  
  end
end
