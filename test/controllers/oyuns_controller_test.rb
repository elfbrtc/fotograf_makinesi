require 'test_helper'

class OyunsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oyun = oyuns(:one)
  end

  test "should get index" do
    get oyuns_url
    assert_response :success
  end

  test "should get new" do
    get new_oyun_url
    assert_response :success
  end

  test "should create oyun" do
    assert_difference('Oyun.count') do
      post oyuns_url, params: { oyun: { aciklama: @oyun.aciklama, isim: @oyun.isim } }
    end

    assert_redirected_to oyun_url(Oyun.last)
  end

  test "should show oyun" do
    get oyun_url(@oyun)
    assert_response :success
  end

  test "should get edit" do
    get edit_oyun_url(@oyun)
    assert_response :success
  end

  test "should update oyun" do
    patch oyun_url(@oyun), params: { oyun: { aciklama: @oyun.aciklama, isim: @oyun.isim } }
    assert_redirected_to oyun_url(@oyun)
  end

  test "should destroy oyun" do
    assert_difference('Oyun.count', -1) do
      delete oyun_url(@oyun)
    end

    assert_redirected_to oyuns_url
  end
end
