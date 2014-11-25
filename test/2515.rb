assert('regression #2515') do
  class Issue2515
    @@x = 123
    class << self
      def x
        @@x
      end
    end
  end
  assert_equal 123, Issue2515.x
end
