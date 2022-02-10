require_relative "../lib/calendar"

describe Calendar do

  describe ".day" do

    context "when the day is nil" do

      it "returns an empty string representing the day" do
        expect(Calendar.day(nil)).to eq("  ")
      end
    end

    context "when the day is a single digit" do

      it "returns the day as a string padded with a space" do
        expect(Calendar.day(1)).to eq(" 1")
      end
    end

    context "when the day is multiple digits" do

      it "returns the day as a string" do
        expect(Calendar.day(11)).to eq("11")
      end
    end
  end

  describe ".week" do

    context "when the days array does not contain any empty days" do

      it "returns all seven days of the week" do
        expect(Calendar.week([ 1, 2, 3, 4, 5, 6, 7 ])).to eq(" 1  2  3  4  5  6  7")
      end
    end

    context "when the days array is padded with nils at the beginning" do

      it "substitutes spaces for the empty days" do
        expect(Calendar.week([ nil, nil, nil, 1, 2, 3, 4 ])).to eq("          1  2  3  4")
      end
    end

    context "when the days array is padded with nils at the end" do

      it "substitutes spaces for the empty days" do
        expect(Calendar.week([ 1, 2, 3, 4, nil, nil, nil ])).to eq(" 1  2  3  4         ")
      end
    end
  end

  describe ".days" do

    context "when the month begins on the first day of the week" do

      it "does not include any spaces before the beginning of the month" do
        expected = <<~CALENDAR.rstrip
           1  2  3  4  5  6  7
           8  9 10 11 12 13 14
          15 16 17 18 19 20 21
          22 23 24 25 26 27 28
          29 30 31
        CALENDAR

        expect(Calendar.days(Date.parse("2021-08-01"))).to eq(expected)
      end
    end

    context "when the provided date does not begin at the start of the month" do

      it "does not include any spaces before the beginning of the month" do
        expected = <<~CALENDAR.rstrip
           1  2  3  4  5  6  7
           8  9 10 11 12 13 14
          15 16 17 18 19 20 21
          22 23 24 25 26 27 28
          29 30 31
        CALENDAR

        expect(Calendar.days(Date.parse("2021-08-03"))).to eq(expected)
      end
    end

    context "when the month does not begin on the first day of the week" do

      it "does not include any spaces before the beginning of the month" do
        expected = <<~CALENDAR.rstrip
                    1  2  3  4
           5  6  7  8  9 10 11
          12 13 14 15 16 17 18
          19 20 21 22 23 24 25
          26 27 28 29 30 31
        CALENDAR

        expect(Calendar.days(Date.parse("2021-12-01"))).to eq(expected)
      end
    end
  end

  describe ".title" do

    it "returns the padded title" do
      expect(Calendar.title(Date.parse("2022-02-01"))).to eq("   February 2022")
    end
  end
end
