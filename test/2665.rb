assert('regression #2665') do
  def issue2665(arg)
    x = :x
    1.times do
      x = block_given?
    end
    x
  end
  assert_false issue2665(1)
end
