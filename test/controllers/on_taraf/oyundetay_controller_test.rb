require 'test_helper'

class OnTaraf::OyundetayControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get on_taraf_oyundetay_index_url
    assert_response :success
  end

end
