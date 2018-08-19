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

  get '/items/:item_id' do
    @item = Item.find_by_item_id(params[:item_id])
    erb :'items/show'
  end

  post '/items' do
    item = Item.new(params[:item])
    item.save
    redirect '/items'
  end

  # delete '/items/:id' do
  #   Item.destroy(params[:id].to_i)
  #   redirect '/items'
  # end

  helpers do
    def number_to_currency(number)
      ('$%.2f' % number).to_s
    end
  end
end
