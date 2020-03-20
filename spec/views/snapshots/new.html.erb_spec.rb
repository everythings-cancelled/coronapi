require 'rails_helper'

RSpec.describe "snapshots/new", type: :view do
  before(:each) do
    assign(:snapshot, Snapshot.new(
      :location => "MyString",
      :alpa2_code => "MyString",
      :latitude => 1.5,
      :longitude => 1.5,
      :deaths => 1
    ))
  end

  it "renders new snapshot form" do
    render

    assert_select "form[action=?][method=?]", snapshots_path, "post" do

      assert_select "input[name=?]", "snapshot[location]"

      assert_select "input[name=?]", "snapshot[alpa2_code]"

      assert_select "input[name=?]", "snapshot[latitude]"

      assert_select "input[name=?]", "snapshot[longitude]"

      assert_select "input[name=?]", "snapshot[deaths]"
    end
  end
end
