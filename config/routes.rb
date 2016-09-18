TimecopWeb::Engine.routes.draw do
  root "main#index"
  post "/" => "main#travel", as: :travel
end
