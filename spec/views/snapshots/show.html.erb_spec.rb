require 'rails_helper'

RSpec.describe "snapshots/show", type: :view do
  before(:each) do
    @snapshot = assign(:snapshot, Snapshot.create!(
      :location => "Location",
      :alpa2_code => "Alpa2 Code",
      :latitude => 2.5,
      :longitude => 3.5,
      :deaths => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Alpa2 Code/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/4/)
  end
end
