class CreateIncident
  include Interactor

  def call
    incident = Incident.new(args)

    if incident.save
      context.incident = incident
    else
      context.fail!(message: I18n.t('create.failure'))
    end
  end
end
