require "test_helper"

class ProductTest < ActiveSupport::TestCase
  test "fixture must be valid" do
    assert products(:one).valid?
  end
end
