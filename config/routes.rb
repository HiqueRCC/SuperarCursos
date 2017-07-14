Rails.application.routes.draw do

  get 'teste/index'

  get 'area_do_professor/index'

  get 'area_do_aluno/index'

  namespace :ouro_preto do
  namespace :profissionalizantes do
    get 'organizacao_de_eventos/index'
    end
  end

  namespace :ouro_preto do
  namespace :super_idade do
    get 'ingles/index'
    end
  end

  namespace :ouro_preto do
  namespace :tecnologia_digital do
    get 'programador_full_web_mobile/index'
    end
  end

  namespace :ouro_preto do
  namespace :tecnologia_digital do
    get 'programador_desktop/index'
    end
  end

  namespace :ouro_preto do
  namespace :tecnologia_digital do
    get 'fotografia_digital/index'
    end
  end

  namespace :ouro_preto do
  namespace :tecnologia_digital do
    get 'design_grafico/index'
    end
  end

  namespace :ouro_preto do
  namespace :tecnologia_digital do
    get 'desenvolvedor_jogos/index'
    end
  end

  namespace :ouro_preto do
  namespace :tecnologia_digital do
    get 'web_design/index'
    end
  end

  namespace :ouro_preto do
  namespace :tecnologia_digital do
    get 'criacao_edicao_videos/index'
    end
  end

  namespace :ouro_preto do
  namespace :cursos_de_informatica do
    get 'informatica_completo/index'
    end
  end

  namespace :ouro_preto do
  namespace :profissionalizantes do
    get 'manutencao_de_computadores/index'
    end
  end

  namespace :ouro_preto do
  namespace :profissionalizantes do
    get 'atendente_farmacia/index'
    end
  end

  namespace :ouro_preto do
  namespace :profissionalizantes do
    get 'ingles_cliente/index'
    end
  end

  namespace :ouro_preto do
  namespace :profissionalizantes do
    get 'garcons/index'
    end
  end

  namespace :ouro_preto do
  namespace :profissionalizantes do
    get 'manicure_pedicure/index'
    end
  end

  namespace :ouro_preto do
  namespace :profissionalizantes do
    get 'estetica/index'
    end
  end

  get 'quem_somos/index'

  namespace :ouro_preto do
    resources :cadastros
  end
  namespace :ouro_preto do
  namespace :super_kids do
    get 'ingles/index'
    end
  end

  namespace :ouro_preto do
  namespace :super_kids do
    get 'informatica/index'
    end
  end

  namespace :ouro_preto do
  namespace :super_idade do
    get 'informatica/index'
    end
  end

  namespace :ouro_preto do
  namespace :profissionalizantes do
    get 'mec_moto/index'
    end
  end

  namespace :ouro_preto do
  namespace :profissionalizantes do
    get 'cabelereiro/index'
    end
  end

  namespace :ouro_preto do
  namespace :profissionalizantes do
    get 'barbeiro/index'
    end
  end

  namespace :ouro_preto do
  namespace :profissionalizantes do
    get 'aux_vet/index'
    end
  end

  namespace :ouro_preto do
  namespace :profissionalizantes do
    get 'aux_adm/index'
    end
  end

  namespace :ouro_preto do
  namespace :formacao do
    get 'aux_saude_bucal/index'
    end
  end

  namespace :ouro_preto do
  namespace :universitario do
    get 'ingles/index'
    end
  end

  namespace :ouro_preto do
  namespace :universitario do
    get 'auto_cad/index'
    end
  end

  namespace :ouro_preto do
  namespace :universitario do
    get 'excel_avancado/index'
    end
  end

  namespace :ouro_preto do
  namespace :universitario do
    get 'empreendedorismos/index'
    end
  end

  namespace :ouro_preto do
  namespace :universitario do
    get 'excel/index'
    end
  end

  get 'encontrenos/index'

  get 'gerencia/index'

  namespace :ouro_preto do
  get 'cursos/index'
  end

  devise_for :admins
  namespace :site do
  get 'home/index'
  end

  root 'site/home#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
