module MedicosHelper
    def resource_name
        :medico
    end
    
    def resource
        @resource ||= Medico.new
    end
    
    def devise_mapping
        @devise_mapping ||= Devise.mappings[:medico]
    end
    
end