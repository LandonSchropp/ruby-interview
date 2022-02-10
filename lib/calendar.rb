module Calendar

  # Returns a string representing the day.
  # @param day The day to convert to a string.
  def day(day)
    day.to_s.rjust(2, " ")
  end

  # Returns a string representing the week.
  # @param days An array containing the days of the week. Empty days should be represented with nil.
  def week(days)
    days.map { day(_1) }.join(" ")
  end

  module_function :day
  module_function :week
end
