class InputComponent < ViewComponent::Base
  def initialize(form:, field:)
    @form = form
    @field = field
  end

  def has_error?
    @form.object.errors.include? @field
  end

  def error_text
    @form.object.errors.messages[@field].join(', ')
  end
end