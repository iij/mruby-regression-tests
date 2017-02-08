assert('regression #3437') do
  assert_equal '"\#{}"', "\#{}".inspect
end
