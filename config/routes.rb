Rails.application.routes.draw do
  

  get 'contacte' => "welcome#contacte", as: "contacte"
  get 'qui-som' => "welcome#qui_som", as: "qui_som"
  get 'gimnastica-hipopressiva' => "welcome#gimnastica_hipopressiva", as: "gimnastica_hipopressiva"
  get 'readaptacio-esportiva' => "welcome#readaptacio_esportiva", as: "readaptacio_esportiva"
  get 'tractaments' => "welcome#tractaments", as: "tractaments"
  get 'terapia-manual' => "welcome#terapia_manual", as: "terapia_manual"
  get 'drenatge-limfatic' => "welcome#drenatge_limfatic", as: "drenatge_limfatic"
  get 'reeducacio' => "welcome#reeducacio", as: "reeducacio"
  get 'articulacio' => "welcome#articulacio", as: "articulacio"
  get 'puncio' => "welcome#puncio", as: "puncio"
  get 'tecniques-miofascials' => "welcome#miofascials", as: "miofascials"
  get 'estiraments' => "welcome#estiraments", as: "estiraments"
  get 'preparacio-al-part' => "welcome#preparacio_part", as: "preparacio_part"
  get 'post-part' => "welcome#post_part", as: "post_part"
  get 'massatge' => "welcome#massatge", as: "massatge"
  get '/admin', to: redirect('/admins/sign_in')

  devise_for :admins
  resources :articles

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

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
