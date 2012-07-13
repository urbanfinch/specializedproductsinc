require File.dirname(__FILE__) + '/bootstrap.rb'

class SpecializedProductsInc < Sinatra::Base
  
  configure do
    set :root,    File.dirname(__FILE__)
    set :views,   File.join(Sinatra::Application.root, 'views')
    set :erb,    {:layout => :'layouts/specializedproductsinc'}
  end
  
  get '/' do
    redirect '/home'
  end
  
  get '/:section/?' do
    erb "#{params[:section]}/#{params[:section]}".to_sym
  end
  
  get '/:section/:subsection/?' do
    erb "#{params[:section]}/#{params[:subsection]}/#{params[:subsection]}".to_sym
  end
  
  get '/*' do
    redirect '/'
  end
end