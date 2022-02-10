module Calendar

  def day(day)
    day.to_s.rjust(2, " ")
  end

  module_function :day
end
