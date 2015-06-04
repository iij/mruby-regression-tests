assert('regression #2815') do
  assert_raise(TypeError) do
    "a".singleton_class.clone
  end
  assert_raise(TypeError) do
    "a".singleton_class.dup
  end
end
