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



end
