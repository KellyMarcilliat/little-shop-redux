class LittleShopApp < Sinatra::Base

  get '/merchants' do
    @merchants = Merchant.all
    erb :"merchants/index"
  end

  post '/merchants' do
    Merchant.create(params[:merchant])
    redirect '/merchants'
  end
  
  get '/invoices' do
    @invoices = Invoice.all
    erb :"invoices/index"
  end
  
  post '/invoices' do
    Invoice.create(params[:invoice])
    redirect '/invoices'
  end
  
  # need read, update, and delete routes
  get '/invoices/:id' do 
    # require 'pry'; binding.pry 
    @invoice = Invoice.find(params[:id]) 
    erb :"invoices/show" 
  end 
  
  get '/invoices/:id/edit' do 
    @invoice = Invoice.find(params[:id]) 
    erb :edit 
  end 
  
  put '/invoices/:id' do |id| 
    Invoice.update(id.to_i, params[:invoice]) 
    redirect "/invoices/#{id}"
  end
  
  delete '/invoices/:id' do |id| 
    Invoice.destroy(id.to_i) 
    redirect '/invoices' 
  end 
    



end
