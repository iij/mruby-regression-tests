assert('regression #3049') do
  assert_equal "10", format("%d", "1_0")
end
