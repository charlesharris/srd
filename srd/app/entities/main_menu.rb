class Entities::MainMenu

  TITLE_SIZE = 20
  TITLE = {
    text: 'Super Robot Driver',
    x: SCREEN_CENTER_X,
    y: SCREEN_MAX_Y - (SCREEN_MAX_Y / 4)
  }
  MENU_TITLE_PROPS = {
    size_enum: ::TextSize.larger(TITLE_SIZE),
    alignment_enum: ::TextAlignment::CENTER,
    font: FONT_DEFAULT_PATH
  }

  ITEM_SIZE = 5
  MENU_ITEMS = [
    { position: 1, label: :new_game, text: 'New Game', size: ITEM_SIZE },
    { position: 2, label: :load_game, text: 'Load Game', size: ITEM_SIZE },
    { position: 3, label: :quit, text: 'Quit', size: ITEM_SIZE }
  ]

  MENU_ITEM_PROPS = {
    size: ITEM_SIZE,
    alignment: :centered,
    foreground_color: ::Colors::BLACK,
    background_color: ::Colors::WHITE,
    selected_foreground_color: ::Colors::WHITE,
    selected_background_color: ::Colors::BLACK
  }

  def serialize
    {
      constants: {
        title_size: TITLE_SIZE,
        title: TITLE,
        menu_title_props: MENU_TITLE_PROPS,
        item_size: ITEM_SIZE,
        menu_item_props: MENU_ITEM_PROPS,
      }
    }
  end

  def inspect
    serialize.to_s
  end

  def to_s
    serialize.to_s
  end

  attr_accessor :selected, :args, :menu_item_container

  def initialize(args)
    @args = args
    @selected = 0

    #@menu_container = Renderable::Container.new.tap do |menu|
    #@title = Renderable::LabelItem.new(props: MENU_TITLE_PROPS, item: TITLE)
    @title = {}.merge!(TITLE).merge!(MENU_TITLE_PROPS)

    @items 
#
#      menu.add(
#        item: Renderable::SelectionList.new(props: MENU_ITEM_PROPS).tap do |menu_list|
#          MENU_ITEMS.each {|mi| menu_list.add(mi) }
#        end
#      )

    args.state.render_queue.push(self)
  end

  def render(args)
    args.outputs.labels << @title.to_h

  end

  def text_size(text_item)
    @args.gtk.calcstringbox(text_item[:text], text_item[:size], FONT_DEFAULT_PATH)
  end

  def render_item(item, selected:)
    item_w, item_h = text_size(item)
    item_margin = 10
    item_y = TITLE[:y] - (item_margin * 5) - (30 * item[:position])
    item_x = TITLE[:x]# + (item_margin * 5)
    menu_item = {
      x: item_x,
      y: item_y,
      text: item[:text],
      size_enum: item[:size],
      alignment_enum: 1
    }

    if selected
      selection_box = {
        x: item_x - (item_w / 2) - (item_margin / 2),
        y: item_y - (item_h / 2) - item_margin * 2,
        w: item_w + item_margin,
        h: item_h + item_margin
      }.merge(::Colors::BLACK)

      @args.outputs.solids << selection_box
      item_color = ::Colors::WHITE
    else
      item_color = ::Colors::BLACK
    end

    @args.outputs.labels << menu_item.merge(item_color)
  end

  def select_next_item
    if @selected_position >= MENU_ITEMS.size - 1
      @selected_position = 0
    else
      @selected_position += 1
    end
  end

  def select_previous_item
    if @selected_position == 0
      @selected_position = MENU_ITEMS.size - 1
    else
      @selected_position -= 1
    end
  end

  def activate_selection(args)
    selection = MENU_ITEMS[@selected_position]
    @args.state.game_mode = selection[:label]
  end

  private

  attr_accessor :title, :menu_items

end
