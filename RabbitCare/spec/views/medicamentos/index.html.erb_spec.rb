require 'rails_helper'

RSpec.describe "medicamentos/index", type: :view do
  before(:each) do
    assign(:medicamentos, [
      Medicamento.create!(
        :nome => "Nome",
        :descricao => "MyText",
        :cpf => "Cpf"
      ),
      Medicamento.create!(
        :nome => "Nome",
        :descricao => "MyText",
        :cpf => "Cpf"
      )
    ])
  end

  it "renders a list of medicamentos" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
  end
end
