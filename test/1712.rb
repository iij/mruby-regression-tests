assert('regression #1712') do
  assert_equal "NaN", (0/0).inspect
end
