QaTest::Application.routes.draw do
  match '*path' => 'users#api'
  root :to => 'users#api'
end
