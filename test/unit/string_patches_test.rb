require_relative '../test_helper'

class StringPatchesTest < ActiveSupport::TestCase

  def test_delimited
    assert_equal('100,000',
      '100000'.delimited,
      "Should return delimited string")
  end

end