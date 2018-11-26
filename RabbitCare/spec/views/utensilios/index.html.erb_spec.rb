require 'rails_helper'
'
RSpec.describe "utensilios/index", type: :view do
  before(:each) do
    assign(:utensilios, [
      Utensilio.create!(
        :nome => "Nome",
        :descricao => "MyText",
        :cpf => "Cpf"
      ),
      Utensilio.create!(
        :nome => "Nome",
        :descricao => "MyText",
        :cpf => "Cpf"
      )
    ])
  end

  it "renders a list of utensilios" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
  end
end
'