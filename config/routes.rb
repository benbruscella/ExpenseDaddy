ExpenseDaddy::Application.routes.draw do
  resources :categories

  resources :expenses

  devise_for :users

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => "home#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
#== Route Map
# Generated on 25 Jun 2011 20:16
#
#                            POST   /categories(.:format)                     {:action=>"create", :controller=>"categories"}
#               new_category GET    /categories/new(.:format)                 {:action=>"new", :controller=>"categories"}
#              edit_category GET    /categories/:id/edit(.:format)            {:action=>"edit", :controller=>"categories"}
#                   category GET    /categories/:id(.:format)                 {:action=>"show", :controller=>"categories"}
#                            PUT    /categories/:id(.:format)                 {:action=>"update", :controller=>"categories"}
#                            DELETE /categories/:id(.:format)                 {:action=>"destroy", :controller=>"categories"}
#                   expenses GET    /expenses(.:format)                       {:action=>"index", :controller=>"expenses"}
#                            POST   /expenses(.:format)                       {:action=>"create", :controller=>"expenses"}
#                new_expense GET    /expenses/new(.:format)                   {:action=>"new", :controller=>"expenses"}
#               edit_expense GET    /expenses/:id/edit(.:format)              {:action=>"edit", :controller=>"expenses"}
#                    expense GET    /expenses/:id(.:format)                   {:action=>"show", :controller=>"expenses"}
#                            PUT    /expenses/:id(.:format)                   {:action=>"update", :controller=>"expenses"}
#                            DELETE /expenses/:id(.:format)                   {:action=>"destroy", :controller=>"expenses"}
#           new_user_session GET    /users/sign_in(.:format)                  {:action=>"new", :controller=>"devise/sessions"}
#               user_session POST   /users/sign_in(.:format)                  {:action=>"create", :controller=>"devise/sessions"}
#       destroy_user_session GET    /users/sign_out(.:format)                 {:action=>"destroy", :controller=>"devise/sessions"}
#              user_password POST   /users/password(.:format)                 {:action=>"create", :controller=>"devise/passwords"}
#          new_user_password GET    /users/password/new(.:format)             {:action=>"new", :controller=>"devise/passwords"}
#         edit_user_password GET    /users/password/edit(.:format)            {:action=>"edit", :controller=>"devise/passwords"}
#                            PUT    /users/password(.:format)                 {:action=>"update", :controller=>"devise/passwords"}
#   cancel_user_registration GET    /users/cancel(.:format)                   {:action=>"cancel", :controller=>"devise/registrations"}
#          user_registration POST   /users(.:format)                          {:action=>"create", :controller=>"devise/registrations"}
#      new_user_registration GET    /users/sign_up(.:format)                  {:action=>"new", :controller=>"devise/registrations"}
#     edit_user_registration GET    /users/edit(.:format)                     {:action=>"edit", :controller=>"devise/registrations"}
#                            PUT    /users(.:format)                          {:action=>"update", :controller=>"devise/registrations"}
#                            DELETE /users(.:format)                          {:action=>"destroy", :controller=>"devise/registrations"}
#                       root        /(.:format)                               {:action=>"index", :controller=>"home"}
#   rails_admin_history_list        /admin/history/list(.:format)             {:action=>"list", :controller=>"rails_admin/history"}
# rails_admin_history_slider        /admin/history/slider(.:format)           {:action=>"slider", :controller=>"rails_admin/history"}
#  rails_admin_history_model        /admin/history/:model_name(.:format)      {:action=>"for_model", :controller=>"rails_admin/history"}
# rails_admin_history_object        /admin/history/:model_name/:id(.:format)  {:action=>"for_object", :controller=>"rails_admin/history"}
#      rails_admin_dashboard        /admin(.:format)                          {:action=>"index", :controller=>"rails_admin/main"}
#           rails_admin_list GET    /admin/:model_name(.:format)              {:action=>"list", :controller=>"rails_admin/main"}
#      rails_admin_list_post POST   /admin/:model_name/list(.:format)         {:action=>"list", :controller=>"rails_admin/main"}
#         rails_admin_export        /admin/:model_name/export(.:format)       {:action=>"export", :controller=>"rails_admin/main"}
#            rails_admin_new GET    /admin/:model_name/new(.:format)          {:action=>"new", :controller=>"rails_admin/main"}
#      rails_admin_get_pages        /admin/:model_name/get_pages(.:format)    {:action=>"get_pages", :controller=>"rails_admin/main"}
#         rails_admin_create POST   /admin/:model_name(.:format)              {:action=>"create", :controller=>"rails_admin/main"}
#           rails_admin_edit GET    /admin/:model_name/:id/edit(.:format)     {:action=>"edit", :controller=>"rails_admin/main"}
#         rails_admin_update PUT    /admin/:model_name/:id(.:format)          {:action=>"update", :controller=>"rails_admin/main"}
#         rails_admin_delete GET    /admin/:model_name/:id/delete(.:format)   {:action=>"delete", :controller=>"rails_admin/main"}
#        rails_admin_destroy DELETE /admin/:model_name/:id(.:format)          {:action=>"destroy", :controller=>"rails_admin/main"}
#    rails_admin_bulk_action POST   /admin/:model_name/bulk_action(.:format)  {:action=>"bulk_action", :controller=>"rails_admin/main"}
#   rails_admin_bulk_destroy POST   /admin/:model_name/bulk_destroy(.:format) {:action=>"bulk_destroy", :controller=>"rails_admin/main"}
