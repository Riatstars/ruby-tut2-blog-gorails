#this component is used for rendering tags into the view

class BaseComponent < ViewComponent::Base
  include UiHelper


  def initialize(render: true, tag: nil, classes: nil , **args)
    @should_render = render
    @tag = tag
    @args = args
    @content_tag_args = prepare_args(@args.merge(classes:))
    
  end

  def call
    content_tag(@tag, content, @content_tag_args)
  end

  def prepare_args(args)
    args[:class] = args[:classes]
    args.delete(:classes)
    args
  end

  def render?
    return true if @should_render.nil?

    @should_render
  end
end
