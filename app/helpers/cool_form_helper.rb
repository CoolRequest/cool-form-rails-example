module CoolFormHelper
  def cool_form_with(**args)
    form_with(**args) do |rails_form|
      cool_form = CoolFormBuilder.new(form: rails_form)
      yield cool_form
    end
  end
end