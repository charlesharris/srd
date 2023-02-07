class Renderable::Container

  attr_reader :items, :props

  def initialize(props: {}, items: [])
    @props = props
    @items = items
  end

  def add(item)
    @items << item
  end
end
