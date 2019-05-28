describe 'tests ' do
  it 'request test' do
origin_zip_code =  "29010120"
destination_zip_code = "22710010"
sales_channel = "CN123"
sku_id = "SKU123"
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
      }
    }.to_json
    @req = Header.post('/quote_by_product', body: @body)
    @result = @req.parsed_response['content']['delivery_options']#['additional_information']
    puts @result
    @info = Header.get('/info')
    # puts @info
    @parsed = @result.collect { |e| e['delivery_method_name'] }
    puts @parsed


    
    # @req.parsed_response['content']
    #  maia.to_s = @req.parsed_response['co]
  end
end