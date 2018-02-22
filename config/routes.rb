Rails.application.routes.draw do
  root to: 'static_page#home'
  get 'static_page/home'

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql'
  end

  post '/graphql', to: 'graphql#execute', format: :json
end
