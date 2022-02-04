require_relative "../lib/problem"

describe Problem do

  it "returns the value provided to the function" do
    expect(Problem.problem("value")).to eq("value")
  end
end
