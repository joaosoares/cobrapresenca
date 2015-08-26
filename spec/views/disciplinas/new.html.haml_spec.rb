require 'rails_helper'

RSpec.describe "disciplinas/new", type: :view do
  before(:each) do
    assign(:disciplina, Disciplina.new(
      :codigo => "MyString",
      :nome => "MyString"
    ))
  end

  it "renders new disciplina form" do
    render

    assert_select "form[action=?][method=?]", disciplinas_path, "post" do

      assert_select "input#disciplina_codigo[name=?]", "disciplina[codigo]"

      assert_select "input#disciplina_nome[name=?]", "disciplina[nome]"
    end
  end
end
