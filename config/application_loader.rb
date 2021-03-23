module ApplicationLoader
  extend self

  def load_app!
    load_root_path

    require_app
  end

  private

  def require_app
    require_file 'config/application'
    require_dir 'app'
  end

  def load_root_path
    require_relative 'root_path'
  end

  def require_file(path)
    require File.join(root, path)
  end

  def require_dir(path)
    path = File.join(root, path)

    Dir["#{path}/**/*.rb"].each { |file| require file }
  end

  def root
    File.expand_path('..', __dir__)
  end
end
