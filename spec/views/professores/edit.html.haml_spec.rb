require 'rails_helper'

RSpec.describe "professores/edit", type: :view do
  before(:each) do
    @professor = assign(:professor, Professor.create!(
      :nome => "MyString",
      :bio_curta => "MyString",
      :contato => "MyString"
    ))
  end

  it "renders the edit professor form" do
    render

    assert_select "form[action=?][method=?]", professor_path(@professor), "post" do

      assert_select "input#professor_nome[name=?]", "professor[nome]"

      assert_select "input#professor_bio_curta[name=?]", "professor[bio_curta]"

      assert_select "input#professor_contato[name=?]", "professor[contato]"
    end
  end
end
