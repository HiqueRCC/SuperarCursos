class SuperarMailer < ApplicationMailer
  include Resque::Mailer
  def notificacao(superar)
    @superar = superar
    @url = 'http://www.superarcursos.com.br'
    mail(to: 'op.superar@gmail.com', subject: 'Cadastro - Realizado')
  end
  def notificacao1(superar)
    @superar = superar
    @url = 'http://www.superarcursos.com.br'
    mail(to: 'superarcp2017@gmail.com', subject: 'Cadastro - Realizado')
  end
end
