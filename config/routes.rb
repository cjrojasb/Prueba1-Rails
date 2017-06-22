Rails.application.routes.draw do
  get 'experiments/page1'

  get 'experiments/page2'

  get 'experiments/page3'

  get 'pages/batman'

  get 'pages/superman'

  get 'pages/batman_vs_superman', to:"pages#batman_vs_superman"

  post 'pages/save_vote_batman'
  
  post 'pages/save_vote_superman'

  # Root

  root 'pages#batman_vs_superman'

end
