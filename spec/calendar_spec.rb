require_relative "../lib/calendar"

describe Calendar do

  describe ".day" do

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
end
