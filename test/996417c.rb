assert('996417c') do
  assert_raise(ArgumentError) {
    sprintf("%d", 2**64)
  }
end
