module CoolForm

  class Builder < ActionView::Helpers::FormBuilder
    def input(field, as: :string, **input_args)
      component_class = get_component(as)
      component = component_class.new(form: self, field: field, **input_args)

      ActionController::Base.render(component)
    end

    private

    # Transformar isso em ActiveSupport::Configurable quando migrar o código para a gem
    def config
      { 
        default_components: {
          string: InputComponent,
          text: TextAreaComponent
        }
      }
    end

    def get_component(as)
      config[:default_components][as]
    end

  end
end