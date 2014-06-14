Rails.application.routes.draw do


  # sign in and accounts
  # see http://rubydoc.info/github/plataformatec/devise/master/ActionDispatch/Routing/Mapper:devise_for
  #   for the routes
  devise_for :users
  
  #-----Resource Creation-----

  #to create and update users
  #get 'users/:id/edit' => 'users#edit'
  put 'users/:id' => 'users#update'
  
  #to upload (create) and change (update) art pieces
  get 'pieces/new' => 'pieces#new'
  post 'pieces' => 'pieces#create'
  get 'pieces/:id/edit' => 'pieces#edit'
  put 'pieces/:id' => 'pieces#update'
  delete 'pieces/:id' => 'pieces#destroy'


  #----------Functions----------

  #to browse all photos and one specific piece
  root 'pieces#index'
  get 'pieces/:id' => 'pieces#show'

  #to buy a piece of art
  get 'purchases/new' => 'purchases#new'
  post 'purchases' => 'purchases#create'

  #to see a user's profile, which includes bio, gallery/collection
  get 'users/:id' => 'users#show'
  get 'galleries/:id' => 'galleries#show'





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
