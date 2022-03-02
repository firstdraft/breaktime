Rails.application.routes.draw do
  root "breaks#new"

  get "countdown" => "breaks#countdown"
end
