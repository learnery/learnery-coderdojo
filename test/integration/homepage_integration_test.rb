require "test_helper"
describe "Homepage Integration Test" do

  it "may be empty" do
    visit learnery.root_path
    page.must_have_content(t :nothing_planned)
  end

end
