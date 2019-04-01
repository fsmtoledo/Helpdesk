require 'test_helper'

class DescricaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @descricao = descricaos(:one)
  end

  test "should get index" do
    get descricaos_url
    assert_response :success
  end

  test "should get new" do
    get new_descricao_url
    assert_response :success
  end

  test "should create descricao" do
    assert_difference('Descricao.count') do
      post descricaos_url, params: { descricao: { departamento: @descricao.departamento, user_id: @descricao.user_id } }
    end

    assert_redirected_to descricao_url(Descricao.last)
  end

  test "should show descricao" do
    get descricao_url(@descricao)
    assert_response :success
  end

  test "should get edit" do
    get edit_descricao_url(@descricao)
    assert_response :success
  end

  test "should update descricao" do
    patch descricao_url(@descricao), params: { descricao: { departamento: @descricao.departamento, user_id: @descricao.user_id } }
    assert_redirected_to descricao_url(@descricao)
  end

  test "should destroy descricao" do
    assert_difference('Descricao.count', -1) do
      delete descricao_url(@descricao)
    end

    assert_redirected_to descricaos_url
  end
end
