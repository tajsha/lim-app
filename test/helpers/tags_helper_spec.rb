require "rails_helper"

RSpec.describe TagsHelper, :type => :helper do
  describe "#html_safe_content" do
    it "returns the html content" do
      expect(helper.html_safe_content("[\"felipecsl/wombat\", \"Wombat\"]")).to eq("felipecsl/wombat</br>Wombat")
    end
  end
end