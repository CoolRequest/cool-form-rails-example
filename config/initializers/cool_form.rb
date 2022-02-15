CoolForm.configure do |config|
  config.component_mappings = {
    string: CoolForm::Components::Input,
    text: CoolForm::Components::TextArea,
    select: CoolForm::Components::Select
  }
end
