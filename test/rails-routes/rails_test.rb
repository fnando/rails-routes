require "test_helper"

class RailsTest < Minitest::Test
  include Rack::Test::Methods

  def app
    Rails.application
  end

  test "renders root route" do
    get "/"

    assert_equal 200, last_response.status
    assert_equal "root", last_response.body
  end

  test "renders v1 route" do
    get "/v1"

    assert_equal 200, last_response.status
    assert_equal "v1", last_response.body
  end

  test "renders v2 route" do
    get "/v2"

    assert_equal 200, last_response.status
    assert_equal "v2", last_response.body
  end
end
