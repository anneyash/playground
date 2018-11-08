Rails.application.routes.draw do
  resources :visa_applications
  resources :question_options
  resources :choose_questions
  resources :text_questions
  resources :choose_answers
  resources :text_answers
  resources :documents
  resources :countries
  resources :users
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
