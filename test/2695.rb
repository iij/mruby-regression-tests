assert('regression #2695') do
  def issue2695
    a = false
    loop do    # test succeeds if one of two loop statements is removed
      loop do
        a = block_given?
        break
      end
      break
    end
    a
  end
  assert_false issue2695
end
