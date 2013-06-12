class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :utype

  def self.validate(email, password) #self para indicar metodo estatico
    user = User.where(email: email, password: password)
    @user = user.first #cria variável de instancia para guardar o resultado
    !user.blank? #retorna booleano se achou ou nao
  end

  def self.get_user
    @user
  end
end
