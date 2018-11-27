require 'rails_helper'
'
RSpec.describe "medicamentos/new", type: :view do
  before(:each) do
    assign(:medicamento, Medicamento.new(
      :nome => "MyString",
      :descricao => "MyText",
      :cpf => "MyString"
    ))
  end

  it "renders new medicamento form" do
    render

    assert_select "form[action=?][method=?]", medicamentos_path, "post" do

      assert_select "input[name=?]", "medicamento[nome]"

      assert_select "textarea[name=?]", "medicamento[descricao]"

      assert_select "input[name=?]", "medicamento[cpf]"
    end
  end
end'
