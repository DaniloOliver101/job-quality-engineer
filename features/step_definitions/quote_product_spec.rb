
Quando("o cep de Origem é {string}") do |o_zip_code|
    @origin_zip_code = o_zip_code
  end
  
  Quando("o cep destino é {string}") do |d_zip_code|
    @destination_zip_code = d_zip_code
  end
  
  Quando("o canal de vendas {string}") do |channel|
    @sales_channel = channel
  end
  
  Quando("o sku {string}") do |sku_id|
    @sku_id = sku_id
  end
  
  Entao("ao fazer o {string} com os dados passados") do |request|
    @body =
        {
            "origin_zip_code": @origin_zip_code,
            "destination_zip_code": @destination_zip_code,
            "quoting_mode": "DYNAMIC_BOX_ALL_ITEMS",
            "products": [
              {
                "weight": 5,
                "cost_of_goods": 10.7,
                "width": 15,
                "height": 17.5,
                "length": 15,
                "quantity": 1,
                "sku_id": @sku_id,
                "product_category": "Bebidas"
              },
              {
                "weight": 7,
                "cost_of_goods": 20.99,
                "width": 20.5,
                "height": 30.7,
                "length": 20,
                "quantity": 1,
                "sku_id": "SKU456",
                "product_category": "Bebidas"
              }
            ],
            "additional_information": {
              "lead_time_business_days": 1,
              "sales_channel": @sales_channel,
              "client_type": "gold"
            },
            "identification": {
              "session": "04e5bdf7ed15e571c0265c18333b6fdf1434658753",
              "ip": "000.000.000.000",
              "page_name": "carrinho",
              "url": "http://www.intelipost.com.br/checkout/cart/"
            }
          }.to_json
    @req = Header.post(request, body: @body)
    # puts @req
  end
  
  Entao("a API retorna os dados {int} , {int} e o {string}") do |code, days_to_delivery, delivery_method|
    expect(@req.code).to eq code
    @verify = @req.code
        if @verify.eql?(200)
          puts @verify
          @delivery_info = @req.parsed_response['content']['delivery_options']
          @days = @delivery_info.collect { |e| e['delivery_estimate_business_days'] }
          expect(@days[0]).to eq days_to_delivery
          @delivery_name = @delivery_info.collect { |e| e['delivery_method_name']}
          @delivery_name.each do |item| 
            if @sales_channel == "CN123" && @destination_zip_code.to_i >= 22710010 &&
                @destination_zip_code.to_i <= 22710990
                expect(item).not_to eq delivery_method
            end 
        end
        
        end
  end
  