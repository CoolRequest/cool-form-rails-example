class InputComponent < ViewComponent::Base
  def initialize(**args)
    @form = args.delete(:form)
    @field = args.delete(:field)
    @input_args = args
  end

  def has_error?
    return false unless @form.object.present?

    @form.object.errors.include? @field
  end

  def error_text
    @form.object.errors.messages[@field].join(', ')
  end
end