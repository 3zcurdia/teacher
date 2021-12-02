Rails.application.config.middleware.use Warden::Manager do |manager|
  manager.default_strategies :password
  manager.failure_app = ->(env) do
    env['REQUEST_METHOD'] = 'GET'
    SessionsController.action(:new).call(env)
  end
end

Warden::Manager.serialize_into_session(&:id)

Warden::Manager.serialize_from_session do |id|
  User.find(id)
end

Warden::Strategies.add(:password) do
  def valid?
    params['email'] && params['password']
  end

  def authenticate!
    user = User.find_by(email: params['email'])
    if user&.authenticate(params['password'])
      success!(user)
    else
      fail("Invalid email or password")
    end
  end
end
