class Renderable::Renderer

  def self.render(args)
    item = args.state.render_queue.pop
    while(item != nil)
      render_item(args, item)
      item = args.state.render_queue.pop
    end
  end

  def self.render_item(args, item)
    case item
    when Renderable::LabelItem
      render_label(args, item)
    end
  end

  def self.render_label(args, item)
    args.outputs.labels << item.to_h
  end
end
