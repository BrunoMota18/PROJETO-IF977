require 'rails_helper'

RSpec.describe "medicamentos/edit", type: :view do
  before(:each) do
    @medicamento = assign(:medicamento, Medicamento.create!(
      :nome => "MyString",
      :descricao => "MyText",
      :cpf => "MyString"
    ))
  end

  it "renders the edit medicamento form" do
    render

    assert_select "form[action=?][method=?]", medicamento_path(@medicamento), "post" do

      assert_select "input[name=?]", "medicamento[nome]"

      assert_select "textarea[name=?]", "medicamento[descricao]"

      assert_select "input[name=?]", "medicamento[cpf]"
    end
  end
end
