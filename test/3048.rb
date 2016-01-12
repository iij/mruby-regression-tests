assert('regression #3048') do
  assert_equal "-2147483648", format("%d", "-2147483648")
end
