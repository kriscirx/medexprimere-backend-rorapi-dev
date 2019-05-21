require "api_version"

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # https://guides.rubyonrails.org/v5.2/routing.html
  # API Definition
  namespace :api, defaults: { format: :json } do
    # Versioning Definition
    scope module: :v1, constraints: ApiVersion.new(version: 1, default: :true) do
      resources :patients
    end
    scope module: :v2, constraints: ApiVersion.new(version: 2, default: :false) do
    end
  end
end
