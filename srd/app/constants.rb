FONT_DEFAULT_PATH = 'font.ttf'
SCREEN_CENTER_X = 640
SCREEN_MAX_X = 1280
SCREEN_CENTER_Y = 360
SCREEN_MAX_Y = 720

class TextSize
  DEFAULT = 0

  def self.larger(x)
    DEFAULT + x
  end

  def self.smaller(x)
    DEFAULT - x
  end
end

class TextAlignment
  RIGHT = 0
  CENTER = 1
  LEFT = 2
end
  
class Colors
  RED = { r: 255, g: 0, b: 0 }
  GREEN = { r: 0, g: 255, b: 0 }
  BLUE = { r: 0, g: 0, b: 255 }
  BLACK = { r: 0, g: 0, b: 0, a: 255 }
  WHITE = { r: 255, g: 255, b: 255, a: 255 }
end
