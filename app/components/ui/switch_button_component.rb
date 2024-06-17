
module UI
  class ButtonComponent < BaseComponent
    def initialize(text:, **options)
      @text = text
      @options = options
    end
  end
end