
module UI
  class SwitchButtonComponent < BaseComponent
    def initialize(text: '', icon: '', **options)
      @text = text
      @icon = icon
      @options = options
      super
    end
  end
end