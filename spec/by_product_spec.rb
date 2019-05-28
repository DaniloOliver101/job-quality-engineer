# describe 'Quote Tests |' do 
#     it 'By Product' do
#         zip_code = "29010120"
#         @body =
#     {
#         "origin_zip_code": zip_code,
#         "destination_zip_code": "29010120",
#         "quoting_mode": "DYNAMIC_BOX_ALL_ITEMS",
#         "products": [
#           {
#             "weight": 5,
#             "cost_of_goods": 10.7,
#             "width": 15,
#             "height": 17.5,
#             "length": 15,
#             "quantity": 1,
#             "sku_id": "SKU123",
#             "product_category": "Bebidas"
#           },
#           {
#             "weight": 7,
#             "cost_of_goods": 20.99,
#             "width": 20.5,
#             "height": 30.7,
#             "length": 20,
#             "quantity": 1,
#             "sku_id": "SKU456",
#             "product_category": "Bebidas"
#           }
#         ],
#         "additional_information": {
#           "lead_time_business_days": 1,
#           "sales_channel": "CN123",
#           "client_type": "gold"
#         }
#       }.to_json
#      testReq =  Header.post('/quote_by_product', body: @body)
#      expect(testReq.code).to eq 200
#      @origin_zip_code = testReq.parsed_response['content']['origin_zip_code']
#      @destination_zip_code = testReq.parsed_response['content']['destination_zip_code']
#      @sales_channel = testReq.parsed_response['content']['additional_information']['sales_channel']
#      @delivery_days = testReq.parsed_response['content']['delivery_options']#['delivery_estimate_business_days']
#      @parser = @delivery_days.collect { |e| e['delivery_estimate_business_days'] }


     
#       puts @origin_zip_code
#       puts @destination_zip_code
#       puts @sales_channel
#       puts @parser.class
#     end 
# end