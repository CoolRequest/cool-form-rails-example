module CoolFormHelper
  def cool_form_with(**options, &block)
    form_with(**options.merge(builder: CoolFormBuilder), &block)
  end
end