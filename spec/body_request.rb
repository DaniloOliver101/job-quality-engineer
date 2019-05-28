def body do 
    @body =
    {
        "origin_zip_code": "04012080",
        "destination_zip_code": "04304011",
        "quoting_mode": "DYNAMIC_BOX_ALL_ITEMS",
        "products": [
          {
            "weight": 5,
            "cost_of_goods": 10.7,
            "width": 15,
            "height": 17.5,
            "length": 15,
            "quantity": 1,
            "sku_id": "SKU123",
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
          "sales_channel": "meu_canal_de_vendas",
          "client_type": "gold"
        },
        "identification": {
          "session": "04e5bdf7ed15e571c0265c18333b6fdf1434658753",
          "ip": "000.000.000.000",
          "page_name": "carrinho",
          "url": "http://www.intelipost.com.br/checkout/cart/"
        }
      }.to_json