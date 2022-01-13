Rails.application.routes.draw do
  root 'home#index'

  namespace :api do
    namespace :v1 do
      resources :jobs
      resources :job_statuses
      resources :companies, only: [:index]
      resources :completed_job_statuses, only: [:index]
      resources :locations, only: [:index]
      resources :pay_ranges, only: [:index]
      resources :users 
    end
  end
end
