Rails.application.routes.draw do
  get 'purchases/create' => 'purchases#create'

  get 'purchases/show' => 'purchases#show'

  get 'purchases/new' => 'purchases#new'

  get 'galleries/show' => 'galleries#show'

  get 'pieces/create' => 'pieces#create'

  get 'pieces/update' => 'pieces#update'

  get 'pieces/show' => 'pieces#show'

  get 'pieces/delete' => 'pieces#delete'

  get 'pieces/new' => 'pieces#new'

  get 'pieces' => 'pieces#index'

  get 'users/create' => 'users#create'

  get 'users/update' => 'users#update'

  get 'users/delete' => 'users#delete'

  get 'users/show' => 'users#show'

  get 'users/new' => 'users#new'

  root 'pieces#index'

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
