assert('regression #1680') do
  issue1680 = Fiber.new do
    "xyz".send(:each_byte) do |c|
      Fiber.yield(c)
    end
  end
  issue1680.resume
  true
end
