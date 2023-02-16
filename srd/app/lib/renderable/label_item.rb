class Renderable::LabelItem < Renderable::Item

  attr_accessor :item

  def initialize(props: {}, item: {})
    @props = props
    @item = item.merge(props)
  end

  def to_h
    @item.to_h
  end

  def inspect
    @item.to_h
  end

end
