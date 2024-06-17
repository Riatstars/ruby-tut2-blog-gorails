
module UiHelper

  HELPERS = {
    base_component: 'BaseComponent',
    ui_switch_button: 'UI::SwitchButtonComponent'
  }.freeze

  HELPERS.each do |name, component|
    define_method name do |*args, **options, &block|
      render component.constantize.new(*args, **options), &block
    end
  end
end
