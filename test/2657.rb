assert('regression #2657') do
  module Module2657
    def a
      super
    end
  end

  class Class2657
    extend Module2657
  end

  assert_raise(NoMethodError) do
    Class2657.a
  end
end
