Rails.application.routes.draw do
  devise_for :users
  get 'home/index' => 'home#index'
  get 'home/setadd' => 'home#setadd'
  get 'home/menu' => 'home#menu'
  get 'home/writing' => 'home#writing'
  get 'home/forbid' => 'home#forbid'
  
  
  get 'home/setdel/:id' => 'home#setdel'
  get 'home/reading/:id' => 'home#reading'
  get 'home/revise/:id' => 'home#revise'
  get 'home/deleting/:id' => 'home#deleting'
  get 'home/fachange/:id' => 'home#fachange'
  get 'home/lifachange/:id' => 'home#lifachange'
  get 'home/searchlist' => 'home#searchlist'
  post 'home/memoReWrite/:id' => 'home#memoReWrite'
  post 'home/memoWrite' =>'home#memoWrite'
  

  get 'home/memolist' => 'home#memolist'
  get 'home/menu' => 'home#menu'
  get 'home/setting' => 'home#setting'
  get 'home/mailer' => 'home#mailer'
  
  
  root 'home#menu'
  
  
  #  The priority is based upon order of creation: first created -> highest priority.
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
