Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/sample_product" => "products#sample_product"
    get "/gasoline" => "products#gasoline"
    get "/rice" => "products#rice"
    get "/specific_product/:chosen_product" => "products#specific_product"
    get "/specific_product" => "products#specific_product"
  end
end
