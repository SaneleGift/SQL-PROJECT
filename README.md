# SQL-PROJECT
cqlsh> create keyspace Gift_RetailDB with replication = {'class':'SimpleStrategy','replication_factor':1};

cqlsh> use Gift_RetailDB;
cqlsh:gift_retaildb> create table Products (
                 ... product_code uuid primary key,
                 ... product_description text,
                 ... product_category map<text, text>,
                 ... product_cost float,
                 ... product_price list<float>
                 ... );

cqlsh:gift_retaildb> begin batch
                 ... INSERT INTO Products (product_code, product_category, product_cost, product_price, product_description ) VALUES                      ... (uuid(), {'Category': 'Clothing', 'Sub-Category': 'Babywear'}, 450.00, [500.00, 450.00], 'Baby Socks');
cqlsh:gift_retaildb> INSERT INTO Products (product_code, product_category, product_cost, product_price, product_description) VALUES
                 ... (uuid(), {'Category': 'Household', 'Sub-Category': 'Electronics'}, 3900.00, [4100.00, 3800.00],'Washing Machine');
cqlsh:gift_retaildb> INSERT INTO Products (product_code, product_category, product_cost, product_price, product_description) VALUES                       ... (uuid(), {'Category': 'Household', 'Sub-Category': 'Electronics'}, 2300.00, [2500.00, 2200.00], 'Microwave Oven');
cqlsh:gift_retaildb> INSERT INTO Products (product_code, product_category, product_cost, product_price, product_description) VALUES 
                 ... (uuid(), {'Category': 'Agricultural', 'Sub-Category': 'Garden'}, 400.00, [500.00, 350.00], 'Garden Shovel');
cqlsh:gift_retaildb> INSERT INTO Products (product_code, product_category, product_cost, product_price, product_description) VALUES
                 ... (uuid(), {'Category': 'Agricultural', 'Sub-Category': 'Garden'}, 600.00, [680.00, 590.00], 'Fertilizer Pack');
cqlsh:gift_retaildb> INSERT INTO Products (product_code, product_category, product_cost, product_price, product_description) VALUES
                 ... (uuid(), {'Category': 'Agricultural', 'Sub-Category': 'Garden'}, 650.00, [700.00, 610.00], 'Water Hose');
cqlsh:gift_retaildb> INSERT INTO Products (product_code, product_category, product_cost, product_price, product_description) VALUES
                 ... (uuid(), {'Category': 'Clothing', 'Sub-Category': 'Babywear'}, 1600.00, [1700.00, 1500.00], 'Baby Shirt');
cqlsh:gift_retaildb> INSERT INTO Products ( product_code, product_category, product_cost, product_price, product_description) VALUES
                 ... (uuid(), {'Category': 'Clothing', 'Sub-Category': 'Babywear'}, 850.00, [900.00, 850.00], 'Baby Pants');
cqlsh:gift_retaildb> INSERT INTO Products (product_code, product_category, product_cost, product_price, product_description) VALUES
                 ... (uuid(), {'Category': 'Clothing', 'Sub-Category': 'Babywear'}, 1100.00, [1200.00, 1100.00], 'Baby Jacket');
cqlsh:gift_retaildb> INSERT INTO Products (product_code, product_category, product_cost, product_price, product_description) VALUES
                 ... (uuid(), {'Category': 'Clothing', 'Sub-Category': 'Babywear'}, 450.00, [500.00, 450.00], 'Baby Socks');
                 ... APPLY BATCH;

cqlsh:gift_retaildb> select * from products;

cqlsh:gift_retaildb> create index on products (product_category);
cqlsh:gift_retaildb> create index on products (product_price);

cqlsh:gift_retaildb> select * from products where product_category['Sub-Category'] = 'Babywear' allow filtering;
			
cqlsh:gift_retaildb> select * from products where product_category['Category'] = 'Agricultural' allow filtering;

update Products set product_price = [1785.00, 1575.00] where product_code = 7c9dfb06-f50f-4c55-aee0-8690b954a6cb;

update Products set product_price = [945.00, 892.50] where product_code = 2222-3333-4444-5555;

update Products set product_price = [1260.00, 1155.00] where product_code = 3333-4444-5555-6666;

update Products set product_price = [525.00, 472.50] where product_code = 55f720bc-48c5-4057-8eb5-ce637dbbad39;

select * from Products where product_category['Category'] = 'Clothing';

cqlsh:gift_retaildb> select * from Products where product_price CONTAINS 3200.00;
