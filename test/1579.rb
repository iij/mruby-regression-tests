assert("regression #1579") do
  class Issue1579
    def self.test
      @a = nil
      begin
        raise 'a'
      ensure
        @a = self
      end
    end

    def self.a
      @a
    end
  end
  Issue1579.test rescue nil
  assert_equal Issue1579, Issue1579.a
end
