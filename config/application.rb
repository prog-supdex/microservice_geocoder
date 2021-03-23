class Application < Roda
  plugin :json
  plugin :symbol_status
  plugin :environments

  opts[:root] = RootPath::PATH
end
