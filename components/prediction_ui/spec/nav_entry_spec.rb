RSpec.describe "nav entry" do
  it "points at the prediction form" do
    entry = PredictionUi.nav_entry
    expect(entry[:name]).to eq("Predictions")
    expect(entry[:link].call).to eq("/prediction_ui/prediction/new")
  end
end