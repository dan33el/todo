Rails.application.routes.draw do
 root to: 'tasks#index'
 resources :tasks# do
 #  member do
 #    post :toggle_completed
 #    put :toggle_completed
 #    patch :toggle_completed
 #  end
 # end

 match '/tasks/:id/toggle_completed', to: 'tasks#toggle_completed', via:
                                         [:put, :patch, :post], as: :task_completed

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
