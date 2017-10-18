Rails.application.routes.draw do
  root 'pages#index'

  get 'rewards/index'

  get 'pages/merchant_dashboard'

  get 'pages/admin_dashboard'

  get 'pages/terms'

  get 'pages/privacy_policy'
  
  get 'listings/index'
  
  resources :baker_product_categories
  resources :baker_service_types
  resources :event_types
  resources :caterer_service_types
  resources :cuisine_types
  resources :raw_food_product_categories
  resources :caterer_types
  resources :product_categories
  resources :main_ordering_methods
  resources :homie_service_types
  resources :homies_types
  resources :ordering_methods
  resources :menu_items
  resources :dining_types
  resources :features
  resources :verifying_documents
  resources :rewards
  resources :discounts
  resources :place_types
  resources :qualifying_types

  resources :bakers
  resources :raw_foods
  resources :suppliers
  resources :online_retails
  resources :caterers
  resources :food_deliveries
  resources :homies
  resources :places
  resources :listings
  devise_for :merchants, controllers: { registrations: "merchants/registrations", sessions: 'merchants/sessions' }
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
