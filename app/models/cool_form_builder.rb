class CoolFormBuilder < ActionView::Helpers::FormBuilder

  def input(field, as: :string, **input_args)
    component_class = get_component(as)
    component = component_class.new(form: self, field: field, **input_args)

    ActionController::Base.render(component)
  end

  private

  def get_component(as)
    InputComponent
    # config[as]
  end

  def default_component_for_field_type(field)
    InputComponent
  end
end