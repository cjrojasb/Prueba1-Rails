Rails.application.routes.draw do
  get 'pages/batman'

  get 'pages/superman'

  get 'pages/batman_vs_superman', to:"pages#batman_vs_superman"

  post 'pages/save_vote_batman'
  
  post 'pages/save_vote_superman'

  # Root

  root 'pages#batman_vs_superman'

end
