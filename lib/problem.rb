module Problem
  def flatten(array)
    array.reduce([]) { _2.is_a?(Array) ? _1.concat(flatten(_2)) : _1 << _2 }
  end

  module_function :flatten
end
