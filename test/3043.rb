assert('regression #3043') do
  assert_equal "1", sprintf("%u", "0_1")

  assert_raise(ArgumentError) {
    s = "0x0" + "0"*100
    t = s[0,2]
    sprintf("%u", t)
  }

  assert_raise(ArgumentError) {
    s = "1_" + "0"*100
    t = s[0,2]
    sprintf("%u", t)
  }
end
