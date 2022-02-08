class CoolFormBuilder
  def initialize(form:)
    @form = form
  end

  def input(field, component_name: nil)
    component = get_component(field, component_name)
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
    klass = if component_name.blank?
              default_component_for_field_type(field)
            else
              component_name.camelize.constantize
            end
    
    klass.new(form: @form, field: field)
  end

  def default_component_for_field_type(field)
    InputComponent
  end
end