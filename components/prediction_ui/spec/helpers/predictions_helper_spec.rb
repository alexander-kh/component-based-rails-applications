RSpec.describe PredictionUi::PredictionsHelper, :type => :helper do
  it "returns a nice predicton text" do
    Named = Struct.new(:name)
    text = prediction_text(
      Named.new("A"), Named.new("B"), Named.new("C"))
    expect(text).to eq(
      "In the game between A and B the winner will be C")
  end
end