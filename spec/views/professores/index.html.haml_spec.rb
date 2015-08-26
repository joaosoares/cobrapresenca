require 'rails_helper'

RSpec.describe "professores/index", type: :view do
  before(:each) do
    assign(:professores, [
      Professor.create!(
        :nome => "Nome",
        :bio_curta => "Bio Curta",
        :contato => "Contato"
      ),
      Professor.create!(
        :nome => "Nome",
        :bio_curta => "Bio Curta",
        :contato => "Contato"
      )
    ])
  end

  it "renders a list of professores" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Bio Curta".to_s, :count => 2
    assert_select "tr>td", :text => "Contato".to_s, :count => 2
  end
end
