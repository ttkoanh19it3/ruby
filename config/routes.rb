Rails.application.routes.draw do
  resources :nhaxuatbans
  resources :danhmuctacgia
  resources :theloais
  resources :danhmucsaches 
  root "danhmucsaches#index"
  get "/danhmucsaches", to: "danhmucsaches#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
