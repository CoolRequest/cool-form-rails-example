class CoolFormBuilder
  def initialize(form:)
    @form = form
  end

  def input(field, component_name: nil, **input_args)
    component_class = get_component(field, component_name)
    component = component_class.new(form: @form, field: field, **input_args)

    ActionController::Base.render(component)
  end

  def object
    @form.object.inspect
  end

  def submit
    @form.submit
  end

  private

  def get_component(field, component_name)
    if component_name.blank?
      default_component_for_field_type(field)
    else
      component_name.camelize.constantize
    end
  end

  def default_component_for_field_type(field)
    InputComponent
  end
end