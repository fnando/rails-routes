Rails.application.routes.draw do
  scope path: '/v2' do
    get '/', to: -> env {
      [200, {'Content-Type' => 'text/html'}, ['v2']]
    }
  end
end
