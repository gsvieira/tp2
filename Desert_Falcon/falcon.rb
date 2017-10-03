require_relative 'gameObject'
require_relative 'box'
require_relative 'sprite'

class Falcon < GameObject
    attr_accessor :box

    def initialize
      @x = 320
      @y = 240
      @z = 1
      @image = Sprite.new("../Sprites/falcon.png")
      @box = Box.new(@x, @y, @image.image.width, @image.image.height)
      super(@image, @box, @z)
    end
    
    def update(dir)
      super
      case dir
        when 'l'
            @box.top -= 10
            @box.left -= 10
            @box.bottom -= 10
            @box.right -= 10
        when 'r'
            @box.top += 10
            @box.left += 10
            @box.bottom += 10
            @box.right += 10
        when 'u'
            "You passed a string"
        when 'd'
            "You passed a string"
    end
    end
    
    def notifyCollision(obj)
    end
end

=begin 
public :
    c o n s t r u t o r ( x : int , y : int , z : int )
    update ( )
    n o t i t y C o l l i s i o n ( o t h e r : GameObject ) : b o o l

class Scissors
    attr_accessor :state
    def initialize(x, y, window)
      @paper_image = Gosu::Image.new(window, path)
      @x = x
      @y = y
      @state = :unselected
    end
  
    def bounds
      BoundingBox.new(@x, @y, 150, 150)
    end
  
    def draw
      @paper_image.draw(@x, @y, 0)
    end
  
    def update
      if @state == :selected
        @x = 400
        @y = 400
      end
    end
    
  end
=end