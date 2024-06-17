module UiHelper
  HELPERS = {
    base_component: 'BaseComponent',
    ui_switch_button: 'UI::ButtonComponent'
  }.freeze

  HELPERS.each do |name, component|
    define_method name do |**options|
      component.constantize.new(**options).call
    end
  end
end