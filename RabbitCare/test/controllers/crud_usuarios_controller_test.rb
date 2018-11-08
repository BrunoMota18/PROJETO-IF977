require 'test_helper'

class CrudUsuariosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get crud_usuarios_index_url
    assert_response :success
  end

end
