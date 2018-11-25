class Paciente < ApplicationRecord

  scope :supervisionado_por, -> (user) do
    where("(pacientes.medico_crm = ? OR pacientes.enfermeiro_coren = ?)", user.crm, user.coren)
  end
end
