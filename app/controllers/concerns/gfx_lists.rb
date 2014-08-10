module GfxLists
  extend ActiveSupport::Concern

  included do
    before_action :get_headers
  end

  private

  def get_headers
    @headers = Array.new
    Dir.foreach('app/assets/images/headers') {|x| @headers << x}
    @headers.shift(2)
  end
end
