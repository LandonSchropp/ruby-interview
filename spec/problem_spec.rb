require_relative "../lib/problem"

describe Problem do

  describe "#flatten" do

    context "when the array is empty" do

      it "returns an empty array" do
        expect(Problem.flatten([])).to eq([])
      end
    end

    context "when the array does not contain any child arrays" do

      it "returns the array" do
        expect(Problem.flatten([ 1, 2, 3 ])).to eq([ 1, 2, 3 ])
      end
    end

    context "when the array contains a child array" do

      it "returns the flattened" do
        expect(Problem.flatten([ 1, [ 2, 3 ] ])).to eq([ 1, 2, 3 ])
      end
    end

    context "when the array contains descendant arrays" do

      it "returns the flattened" do
        expect(Problem.flatten([ 1, [ 2, [ 3 ] ] ])).to eq([ 1, 2, 3 ])
      end
    end
  end
end
