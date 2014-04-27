
class CookieController

  def initialize
    @view = CookieViewer.new
    @data = CookieModel.new
  end

  def get_cookies
    @view.show(@data.find_path)
  end
end