assert('regression #2800') do
  l = 1
  assert_raise(ArgumentError, TypeError) {
    Kernel.lambda(&l)
  }
end
