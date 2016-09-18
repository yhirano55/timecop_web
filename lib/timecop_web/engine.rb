module TimecopWeb
  class Engine < ::Rails::Engine
    isolate_namespace TimecopWeb

    config.generators do |g|
      g.template_engine :slim
      g.assets false
      g.helper false
    end
  end
end
