module With::Array

  def randomize_start
    return self if blank?
    Kernel.rand(length).times do
      push(shift)
    end
    self
  end

end