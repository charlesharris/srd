class Renderable::Renderer

  def self.render(args)
    item = args.state.render_queue.pop
    while(item != nil)
      item.render(args)
      item = args.state.render_queue.pop
    end
  end
end
