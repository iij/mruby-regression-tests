assert('regression #2655') do
  x = true
  10.step(100, -1) {
    x = false
    break
  }
  assert_true x

  assert_raise(ArgumentError) {
    10.step(100, 0) {
      break
    }
  }
end
