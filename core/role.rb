class Role
  attr_accessor :name

  def name
    Rainbow(@name).underline.yellow
  end
end