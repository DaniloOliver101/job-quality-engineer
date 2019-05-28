      Dado("que o body recebe os parametros {string} , {string}, {string} e {string}") do |origin_zip_code, destination_zip_code, sales_channel, sku_id|
        @body =
        {
            "origin_zip_code": origin_zip_code,
            "destination_zip_code": destination_zip_code,
            "quoting_mode": "DYNAMIC_BOX_ALL_ITEMS",
            "products": [
              {
                "weight": 5,
                "cost_of_goods": 10.7,
                "width": 15,
                "height": 17.5,
                "length": 15,
                "quantity": 1,
                "sku_id": sku_id,
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
              "sales_channel": sales_channel,
              "client_type": "gold"
            },
            "identification": {
              "session": "04e5bdf7ed15e571c0265c18333b6fdf1434658753",
              "ip": "000.000.000.000",
              "page_name": "carrinho",
              "url": "http://www.intelipost.com.br/checkout/cart/"
            }
          }.to_json
      end
      
      Quando("o {string} é realizado") do |request|
        @req = Header.post(request,body: @body);
      end
      
      Então("a api deve me retornar {int}") do |res|
        expect(@req.code).to eq res
        
      end
      Então("a api deve me retornar {int} e os {int} e {string}") do |resp, days_to_delivery, opt_delivery|
        expect(@req.code).to eq resp
        @verify = @req.code
        if @verify.eql?(200)
          puts @verify
          @delivery_info = @req.parsed_response['content']['delivery_options']
          @days = @delivery_info.collect { |e| e['delivery_estimate_business_days'] }
          expect(@days[0]).to eq days_to_delivery
          @delivery_name = @delivery_info.collect { |e| e['delivery_method_name']}
          puts @delivery_name
        
        end
        # puts @days
      end