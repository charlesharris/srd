def tick(args)

  args.state.game_state ||= :init
  #args.outputs.labels  << [640, 540, 'Hello Ticker!', 5, 1]

  case args.state.game_state
  when :init
    init_game(args)
    #Systems::GameInitialization.initialize_game(args)
  when :main_menu
    args.state.main_menu = Entities::MainMenu.new(args)
    #d(args, "hello", args.state.main_menu)
    #Components::MainMenuInput.update(args)
    #args.state.main_menu.render(args)
  end

  Renderable::Renderer.render(args)
  render_debug_messages(args)
end

def init_game(args)
  args.state.entities = {}
  args.state.components = {}
  args.state.systems = {}
  args.state.render_queue = Renderable::RenderQueue.new

  args.state.game_state = :main_menu
end

def d(args, key, message)
  args.state.debug_messages ||= {}
  args.state.debug_messages[key] = message
end

def render_debug_messages(args)
  i = 1
  args.state.debug_messages.each do |key, msg|
    args.outputs.labels << [ 100, (700 - i * 30), "#{key}: #{msg}", 0, 0 ]
    i += 1
  end
end
