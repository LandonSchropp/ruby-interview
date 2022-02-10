require "date"
require "pry-byebug"

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

  # Returns the days in the month. This does not include the name of the month or the week header.
  # @param date The date object represets the month.
  def days(date)

    # Use the start of the month.
    date = Date.new(date.year, date.month, 1)

    # Determine the number of days in the month.
    days_in_month = Date.new(date.year, date.month, -1).day

    # Print out the weeks for the month joined with a newline.
    (-(date.wday - 1)..days_in_month).each_slice(7).to_a
      .map { |week| week.map { _1 <= 0 ? nil : _1 } }
      .map { week(_1) }
      .join("\n")
  end

  module_function :day
  module_function :week
  module_function :days
end
