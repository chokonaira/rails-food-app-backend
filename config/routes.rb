Rails.application.routes.draw do
  root "welcome#index"
  post "signup" => "user#signup"
  post "login" => "user#login"
  post "products/categories/add" => "category#add_category" 
  get "products/categories" => "category#get_all_category" 
  get "products/categories/:id" => "category#get_specific_category_details" 
  patch "products/categories/:id" => "category#update_a_category" 
  delete "products/categories/:id" => "category#delete_a_category"
  post "products/add" => "product#add_a_product" 
  get "products/:id" => "product#get_a_product_details" 
  get "products" => "product#get_all_products"
  patch "products/update/:id" => "product#update_a_product_details"
  patch "products/image/:id" => "product#update_food_image"
  delete "products/:id" => "product#delete_a_product"
  post "restaurants/add" => "hotels_restaurants#add_a_restaurant" 
  get "restaurants" => "hotels_restaurants#get_all_restaurants" 
  get "restaurants/:id" => "hotels_restaurants#get_specific_restaurant_details"
  patch "restaurants/:id" => "hotels_restaurants#update_a_restaurant_details"
  delete "restaurants/:id" => "hotels_restaurants#delete_a_restaurant_details"
  patch "restaurants/image/:id" => "hotels_restaurants#update_restaurants_image"
  post "basket_items/add" => "basket_item#add_basket_item"
  get "basket_items/:id" => "basket_item#get_a_basket_item"
  delete "basket_items/:id" => "basket_item#delete_a_basket_item"
  delete "basket_items" => "basket_item#delete_all_basket_items"
  post "baskets/create" => "basket#create_basket"
  get "baskets/:user_id" => "basket#gets_specific_user_basket"
  post "checkouts/:user_id" => "checkout#checkout_a_basket"
  get "profile/:id" => "profile#user_profile"
end
