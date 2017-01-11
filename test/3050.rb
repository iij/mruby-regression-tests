assert('regression #3050') do
  # Without pr3050, mruby raises a TypeError.
  ObjectSpace.each_object(singleton_class) {}
  true
end
