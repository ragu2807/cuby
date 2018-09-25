module TestWorld
  def app
    @app ||= App.new
  end
end

World(TestWorld)
