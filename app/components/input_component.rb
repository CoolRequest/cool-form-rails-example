class InputComponent < ViewComponent::Base
  def initialize(form:, field:)
    @form = form
    @field = field
  end
end