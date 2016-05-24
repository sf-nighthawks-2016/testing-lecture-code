require_relative '../grocery_list'

describe GroceryList do
  let(:list) {["tomato", "avocado"]}
  let(:grocery_list) { GroceryList.new }
  let(:grocery_list_full) { GroceryList.new(list) }

  describe "initializes correctly" do
    it "is a grocery_list" do
      expect(grocery_list).to be_a GroceryList
    end

    it "starts with an empty list if none is passed" do
      expect(grocery_list.list).to eq []
    end

    it "starts with the passed list if one is passed" do
      expect(grocery_list_full.list).to eq list
    end
  end

  describe "#add_item" do
    it "raises an error if we add a number" do
      expect{grocery_list.add_item(3)}.to raise_error TypeError
    end

    it "correctly adds a string item" do
      grocery_list.add_item("cucumber")
      expect(grocery_list.list).to include "cucumber"
    end
  end
end
