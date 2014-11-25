assert('regression #1459') do
  def test_issue_1459
    x = [ 1, 2 ]
    if true
      a, b = [ 1, 2 ]
      a
    else
      c, d = x
      c
    end
  end

  assert_equal 1, test_issue_1459, 'mruby/mruby#1459'
end

