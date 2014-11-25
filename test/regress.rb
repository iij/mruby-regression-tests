assert('regression #1658') do
  assert_equal [1].hash, [1].hash
end

assert('regression #1662') do
  assert_equal '"\240"', "\240".inspect
end

assert('regression #1665') do
  def regress1665(*a)
    a[0] == 5
  end
  assert_true regress1665(*5)
end

assert('regression #1710') do
  assert_equal "1.0e+100", (10.0**100).to_s
end

assert('regression #1712') do
  assert_equal "NaN", (0/0).inspect
end

assert('regression #1713') do
  assert_equal "1.0e+200", (10.0**200).inspect
end

assert('regression b4bc39568060d365829d2ace0f84f0ba382bfeb1') do
  assert_equal "1.0e+36", (10**36).inspect
end

assert('regression #1716') do
  assert_equal "-0.0", ((-1)/(1/0)).to_s
  assert_equal "-0.0", (1/((-1)/0)).to_s
end

assert('regression #1746') do
  assert_raise(NoMethodError) do
    class Regression1746
      def inspect
        xxx
      end
    end
    Regression1746.new.inspect
  end
end

assert('regression #1766') do
  loop do
    Fiber.new { break }.resume
    break
  end
  true
end

assert('regression #1786') do
  excs = [ NameError, ArgumentError ]
  e0 = nil
  begin
    raise ArgumentError, "by raise"
  rescue *excs => e
    e0 = e
  end
  assert_true e0.is_a? ArgumentError
end

assert('regression #1970') do
  class Issue1970
    def method
      a = {:b => { :c => 1 } }
    end
  end
  h = Issue1970.new.send(:method)
  assert_true h.has_key?(:b)
end

assert('regression #1983') do
  module Issue1983
    class FooModInner
    end
    class << self
      FooModInner
      class << self
        FooModInner
      end
    end
  end
  true
end

assert('regression #1992') do
  class Issue1992
    def bar(&block)
      @b = block
      1
    end

    def foo
      a = bar do
        "a=#{a}"
      end
    end

    def baz
      @b.call
    end
  end
  i = Issue1992.new
  i.foo
  assert_equal "a=1", i.baz
end

assert('regression #2144') do
  def foo
    yield 1
  end
  x = foo { |a,b=3,c| [a, b, c] }
  assert_equal [1, 3, nil], x
end

assert('regression #2421') do
  a = Proc.new{ {} }.arity
  assert_equal 0, a
end

assert('regression #2474') do
  class A
    def aaa
      xxx
    end

    def inspect
      aaa
    end
  end
  assert_raise(NoMethodError) do
    A.new.inspect   # mruby died here
  end
end
