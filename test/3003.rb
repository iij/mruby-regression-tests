assert('regression #3003') do
  class Issue3003; end
  a = Issue3003.new
  class << a
    def foo
      Issue3003.new
    end
  end
  assert_true a.foo.is_a? Issue3003
end
