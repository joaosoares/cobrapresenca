require 'rails_helper'

RSpec.describe "disciplinas/edit", type: :view do
  before(:each) do
    @disciplina = assign(:disciplina, Disciplina.create!(
      :codigo => "MyString",
      :nome => "MyString"
    ))
  end

  it "renders the edit disciplina form" do
    render

    assert_select "form[action=?][method=?]", disciplina_path(@disciplina), "post" do

      assert_select "input#disciplina_codigo[name=?]", "disciplina[codigo]"

      assert_select "input#disciplina_nome[name=?]", "disciplina[nome]"
    end
  end
end
