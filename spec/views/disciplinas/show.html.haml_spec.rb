require 'rails_helper'

RSpec.describe "disciplinas/show", type: :view do
  before(:each) do
    @disciplina = assign(:disciplina, Disciplina.create!(
      :codigo => "Codigo",
      :nome => "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Codigo/)
    expect(rendered).to match(/Nome/)
  end
end
