assert('regression #2797') do
  a = "1.2.3"
  b = a.gsub('.', '-');
  c = b.split('-');
  assert_equal ["1", "2", "3"], c
end
