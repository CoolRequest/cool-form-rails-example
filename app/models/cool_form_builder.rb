class CoolFormBuilder
  def initialize(form:)
    @form = form
  end

  def input(field)
    ActionController::Base.render(InputComponent.new(form: @form, field: field))
  end
end