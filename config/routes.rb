QaTest::Application.routes.draw do
  get '*path', to: 'users#api'
  root to: 'users#api'
end
