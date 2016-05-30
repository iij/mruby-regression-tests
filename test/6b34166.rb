assert('6b34166') do
  module M_6b34166
    ABC = 123
  end
  class C_6b34166
    include M_6b34166
  end
  assert_true C_6b34166.const_defined?(:ABC)
end
