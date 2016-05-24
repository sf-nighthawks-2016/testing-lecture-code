
class GroceryList
  attr_reader :list

  def initialize(list = [])
    @list = list
  end

  def add_item(item)
    raise TypeError if item.class != String

    @list << item
  end
end
