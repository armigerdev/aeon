Rails.application.routes.draw do
  resources :lead_drops do
    collection { post :import }
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "lead_drops#index"
end

# == Route Map
#
#            Prefix Verb   URI Pattern                    Controller#Action
# import_lead_drops POST   /lead_drops/import(.:format)   lead_drops#import
#        lead_drops GET    /lead_drops(.:format)          lead_drops#index
#                   POST   /lead_drops(.:format)          lead_drops#create
#     new_lead_drop GET    /lead_drops/new(.:format)      lead_drops#new
#    edit_lead_drop GET    /lead_drops/:id/edit(.:format) lead_drops#edit
#         lead_drop GET    /lead_drops/:id(.:format)      lead_drops#show
#                   PATCH  /lead_drops/:id(.:format)      lead_drops#update
#                   PUT    /lead_drops/:id(.:format)      lead_drops#update
#                   DELETE /lead_drops/:id(.:format)      lead_drops#destroy
#              root GET    /                              lead_drops#index
#
