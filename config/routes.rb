Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/sample_product" => "products#sample_product"
  end

  namespace :api do
    get "/gasoline" => "products#gasoline"
  end

  namespace :api do
    get "/rice" => "products#rice"
  end
end
