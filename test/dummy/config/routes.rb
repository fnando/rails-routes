Rails.application.routes.draw do
  root to: -> env {
    [200, {'Content-Type' => 'text/html'}, ['root']]
  }
end
