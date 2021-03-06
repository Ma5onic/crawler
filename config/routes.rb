Rails.application.routes.draw do
  root 'sites#index'

  get '/sites/new',      to: 'sites#new',     as: :new_site
  get '/sites/:id',      to: 'sites#show',    as: :site
  get '/sites/:id/edit', to: 'sites#edit',    as: :edit_site
  get '/sites',          to: 'sites#index',   as: :sites
  match '/sites',        to: 'sites#create',  as: :create_site, via: :post
  match '/sites/:id',    to: 'sites#destroy', as: :delete_site, via: :delete
  match '/sites/:id',    to: 'sites#update',                    via: :patch

  get '/crawls/new/:site_id', to: 'crawls#new', as: :new_crawl
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
