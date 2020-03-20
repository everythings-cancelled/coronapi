require 'rails_helper'

RSpec.describe "snapshots/index", type: :view do
  before(:each) do
    assign(:snapshots, [
      Snapshot.create!(
        :location => "Location",
        :alpa2_code => "Alpa2 Code",
        :latitude => 2.5,
        :longitude => 3.5,
        :deaths => 4
      ),
      Snapshot.create!(
        :location => "Location",
        :alpa2_code => "Alpa2 Code",
        :latitude => 2.5,
        :longitude => 3.5,
        :deaths => 4
      )
    ])
  end

  it "renders a list of snapshots" do
    render
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Alpa2 Code".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
