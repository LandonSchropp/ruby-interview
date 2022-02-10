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
end
