module SesionesHelper
	def sign_in(gestor)
    remember_token = Gestor.new_remember_token
    cookies.permanent[:remember_token] = remember_token
    gestor.update_attribute(:remember_token, Gestor.hash(remember_token))
    self.current_user = gestor
  end

  def signed_in?
    !current_user.nil?
  end

  def current_user=(gestor)
    @current_user = gestor
  end

  def signed_in_user
    unless signed_in?
      redirect_to root_path, notice: "Por favor, logueate."
    end
  end

  def current_user
    remember_token = Gestor.hash(cookies[:remember_token])
    @current_user ||= Gestor.find_by(remember_token: remember_token)
  end

  def sign_out
    current_user.update_attribute(:remember_token,
                                  Gestor.hash(Gestor.new_remember_token))
    cookies.delete(:remember_token)
    self.current_user = nil
  end
end
