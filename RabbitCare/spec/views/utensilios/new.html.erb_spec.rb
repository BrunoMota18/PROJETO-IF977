require 'rails_helper'
'
RSpec.describe "utensilios/new", type: :view do
  before(:each) do
    assign(:utensilio, Utensilio.new(
      :nome => "MyString",
      :descricao => "MyText",
      :cpf => "MyString"
    ))
  end

  it "renders new utensilio form" do
    render

    assert_select "form[action=?][method=?]", utensilios_path, "post" do

      assert_select "input[name=?]", "utensilio[nome]"

      assert_select "textarea[name=?]", "utensilio[descricao]"

      assert_select "input[name=?]", "utensilio[cpf]"
    end
  end
end
'