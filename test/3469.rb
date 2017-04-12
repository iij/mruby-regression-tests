assert('regression #3469') do
  class Issue3469
    @@a = []

    def method_missing(method, *args, &block)
      if block_given?
        @@a << "block_given?"
      end
      if block
        @@a << "block"
      end
    end

    def self.a
      @@a
    end
  end

  Issue3469.new.hello
  assert_equal [], Issue3469.a
end
