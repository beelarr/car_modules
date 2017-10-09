#mixin module to another file

module Car
  module ClassMethods
    def has_car?
      true
    end
  end
  p "This is #{self}"
  p "This is #{ClassMethods} base"
  def self.included(base)
    base.extend(ClassMethods)
  end
  def description
    'Car Description'
  end
end