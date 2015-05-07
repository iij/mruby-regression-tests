assert('regression #2726') do
  def issue2726_a(seq)
    seq << 1
    issue2726_c(seq) do
      raise
    end
    seq << 2
  end

  def issue2726_c(seq)
    seq << 3
    begin
      yield
    rescue
      seq << 6
    end
    seq << 7
  ensure
    seq << 8
  end

  seq = []
  issue2726_a(seq)
  assert_equal [1, 3, 6, 7, 8, 2], seq
end
