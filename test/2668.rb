assert('regression #2668') do
  class Issue2668a
    def inspect
      1
    end
  end
  Issue2668a.new.a rescue NoMethodError

  class Issue2668b
    def self.inspect
      1
    end
    alias_method :a, :b rescue NoMethodError
  end
end
