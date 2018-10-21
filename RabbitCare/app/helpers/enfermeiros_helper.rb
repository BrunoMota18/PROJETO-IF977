module EnfermeirosHelper
    def resource_name
        :enfermeiro
    end
    
    def resource
        @resource ||= Enfermeiro.new
    end
    
    def devise_mapping
        @devise_mapping ||= Devise.mappings[:enfermeiro]
    end
    
end
