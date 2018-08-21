class LittleShopApp < Sinatra::Base

  get '/merchants' do
    @merchants = Merchant.all
    erb :"merchants/index"
  end

  get '/merchants/new' do
    erb :"merchants/new"
  end

  post '/merchants' do
    Merchant.create(params[:merchant])
    redirect '/merchants'
  end

  get '/merchants/:id' do
    @merchant = Merchant.find(params[:id])
    erb :"merchants/show"
  end

  get '/merchants/:id/edit' do
    @merchant = Merchant.find(params[:id])
    erb :"merchants/edit"
  end

  delete '/merchants/:id' do |id|
    Merchant.destroy(params[:id].to_i)
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

  get '/invoices/:id' do 
    # require 'pry'; binding.pry 
    @invoice = Invoice.find(params[:id]) 
    erb :"invoices/show" 
  end 
  
  get '/invoices/:id/edit' do 
    @invoice = Invoice.find(params[:id]) 
    erb :'invoices/edit' 
  end 
  
  put '/invoices/:id' do |id| 
    Invoice.update(id.to_i, params[:invoice]) 
    redirect "/invoices/#{id}"
  end

  delete '/invoices/:id' do |id|
    Invoice.destroy(id.to_i)
    redirect '/invoices'
  end

  get '/items' do
    @items = Item.all
    erb :'items/index'
  end

  get '/items/new' do
    erb :'items/new'
  end

  get '/items/:id' do
    @item = Item.find(params[:id])
    erb :'items/show'
  end
  post '/items' do
    Item.create(params[:item])
    redirect '/items'
  end

  get '/items/:id/edit' do
    @item = Item.find(params[:id])
    erb :"items/edit"
  end

  delete '/merchants/:id' do |id|
    Item.destroy(params[:id].to_i)
    redirect '/items'
  end
end
