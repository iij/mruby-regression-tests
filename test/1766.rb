assert('regression #1766') do
  assert_raise(LocalJumpError) do
    loop do
      Fiber.new { break }.resume
      break
    end
  end
end
