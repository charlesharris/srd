class Renderable::Item

  attr_accessor :props, :items

  def initialize(props: {}, items: [])
    @props = props
    @items = items.map { |i| i.merge(props) }
    self
  end

  def add(item:, position: {})
    x = position[:x] || 0
    y = position[:y] || 0

    @items << {
      position: { x: x, y: y },
      item: item.merge(@props)
    }
  end
end
