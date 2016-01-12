assert('regression #3040') do
  a = "1"*100
  assert_equal "1", sprintf("%d", a[0])
end
