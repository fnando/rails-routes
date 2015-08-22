Rails.application.routes.draw do
  scope path: '/v1' do
    get '/', to: -> env {
      [200, {'Content-Type' => 'text/html'}, ['v1']]
    }
  end
end
