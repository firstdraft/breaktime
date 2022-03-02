Rails.application.routes.draw do
  root "breaks#countdown"

  get "new" => "breaks#new"
end
