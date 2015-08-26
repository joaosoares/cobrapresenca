require 'rails_helper'

RSpec.describe "professores/new", type: :view do
  before(:each) do
    assign(:professor, Professor.new(
      :nome => "MyString",
      :bio_curta => "MyString",
      :contato => "MyString"
    ))
  end

  it "renders new professor form" do
    render

    assert_select "form[action=?][method=?]", professores_path, "post" do

      assert_select "input#professor_nome[name=?]", "professor[nome]"

      assert_select "input#professor_bio_curta[name=?]", "professor[bio_curta]"

      assert_select "input#professor_contato[name=?]", "professor[contato]"
    end
  end
end
