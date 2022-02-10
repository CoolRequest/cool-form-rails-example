class InputComponent < ViewComponent::Base
  def initialize(form:, field:, **input_args)
    @form = form
    @field = field
    @input_args = input_args
  end

  def has_error?
    return false unless @form.object.present?

    @form.object.errors.include? @field
  end

  def error_text
    @form.object.errors.messages[@field].join(', ')
  end
end