CoolForm.configure do |config|
  config.component_mappings = {
    string: 'CoolForm::Components::Bootstrap::Input',
    text: 'CoolForm::Components::TextArea',
    select: 'CoolForm::Components::Select',
  }
end
