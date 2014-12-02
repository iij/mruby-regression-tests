assert('regression #2641') do
  class Issue2641 < Time
    def self.new
      super(2012, 4, 21)
    end
  end
  Issue2641.new
end
