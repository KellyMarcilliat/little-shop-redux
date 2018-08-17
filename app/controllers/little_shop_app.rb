class LittleShopApp < Sinatra::Base

  get '/merchants' do
    @merchants = Merchant.all
    erb :"merchants/index"
  end

  get '/merchants' do
    @merchants = Merchant.all
    erb :"merchants/index"
  end

  # post '/merchants' do
  #   Merchant.create(params[:merchant])
  #   redirect '/merchants'
  # end

  get '/items' do
    @items = Item.all
    erb :'items/index'
  end

  helpers do
    def number_to_currency(number)
      ('$%.2f' % number).to_s
    end
  end
end
