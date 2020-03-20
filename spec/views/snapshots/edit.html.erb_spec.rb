require 'rails_helper'

RSpec.describe "snapshots/edit", type: :view do
  before(:each) do
    @snapshot = assign(:snapshot, Snapshot.create!(
      :location => "MyString",
      :alpa2_code => "MyString",
      :latitude => 1.5,
      :longitude => 1.5,
      :deaths => 1
    ))
  end

  it "renders the edit snapshot form" do
    render

    assert_select "form[action=?][method=?]", snapshot_path(@snapshot), "post" do

      assert_select "input[name=?]", "snapshot[location]"

      assert_select "input[name=?]", "snapshot[alpa2_code]"

      assert_select "input[name=?]", "snapshot[latitude]"

      assert_select "input[name=?]", "snapshot[longitude]"

      assert_select "input[name=?]", "snapshot[deaths]"
    end
  end
end
