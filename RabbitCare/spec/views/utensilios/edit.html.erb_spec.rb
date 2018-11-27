require 'rails_helper'
'
RSpec.describe "utensilios/edit", type: :view do
  before(:each) do
    @utensilio = assign(:utensilio, Utensilio.create!(
      :nome => "MyString",
      :descricao => "MyText",
      :cpf => "MyString"
    ))
  end

  it "renders the edit utensilio form" do
    render

    assert_select "form[action=?][method=?]", utensilio_path(@utensilio), "post" do

      assert_select "input[name=?]", "utensilio[nome]"

      assert_select "textarea[name=?]", "utensilio[descricao]"

      assert_select "input[name=?]", "utensilio[cpf]"
    end
  end
end
'