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
