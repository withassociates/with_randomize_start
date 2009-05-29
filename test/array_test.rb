require 'test_helper'

class ArrayTest < Test::Unit::TestCase

  context "randomize_start" do

    setup do
      @array = %w(a b c d e)
    end

    should "array size of 1" do
      assert_equal [1].randomize_start, [1]
    end

    should "array size of 0" do
      assert_equal [].randomize_start, []
    end

    should "offset by 3" do
      Kernel.expects(:rand).returns(3)
      assert_equal @array.randomize_start, %w(d e a b c)
    end

    should "offset by 4" do
      Kernel.expects(:rand).returns(4)
      assert_equal @array.randomize_start, %w(e a b c d)
    end

    should "work with a random rumber" do
      assert_nothing_raised do
        10.times do
          @array.randomize_start.inspect
        end
      end
    end

  end

end