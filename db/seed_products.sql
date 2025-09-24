-- Seed categories
INSERT INTO category (name, image_name, is_active) VALUES
  ('Medicines','default.jpg',1),
  ('Supplements','default.jpg',1),
  ('PersonalCare','default.jpg',1),
  ('Devices','default.jpg',1)
ON DUPLICATE KEY UPDATE name=VALUES(name);

-- Seed 20 products (all active)
INSERT INTO product (title, description, category, price, stock, image, discount, discount_price, is_active) VALUES
  ('Paracetamol 500mg','Pain and fever reducer','Medicines',30,200,'default.jpg',0,30,1),
  ('Ibuprofen 200mg','NSAID pain reliever','Medicines',45,150,'default.jpg',0,45,1),
  ('Amoxicillin 500mg','Antibiotic capsules','Medicines',120,90,'default.jpg',0,120,1),
  ('Cetirizine 10mg','Antihistamine for allergies','Medicines',25,180,'default.jpg',0,25,1),
  ('Vitamin C 1000mg','Immune support tablets','Supplements',299,120,'default.jpg',0,299,1),
  ('Multivitamin A-Z','Daily multivitamin tablets','Supplements',349,130,'default.jpg',0,349,1),
  ('Omega-3 Fish Oil','1000mg softgels','Supplements',499,110,'default.jpg',0,499,1),
  ('Calcium + D3','Bone health tablets','Supplements',279,140,'default.jpg',0,279,1),
  ('Hand Sanitizer 500ml','70% alcohol hand rub','PersonalCare',159,160,'default.jpg',0,159,1),
  ('Antiseptic Liquid 1L','First-aid antiseptic','PersonalCare',199,140,'default.jpg',0,199,1),
  ('Sunscreen SPF 50','Broad spectrum lotion','PersonalCare',399,80,'default.jpg',0,399,1),
  ('Thermometer Digital','Fast read thermometer','Devices',699,60,'default.jpg',0,699,1),
  ('BP Monitor','Automatic blood pressure monitor','Devices',1899,40,'default.jpg',0,1899,1),
  ('Glucometer Kit','Blood glucose monitoring kit','Devices',1499,50,'default.jpg',0,1499,1),
  ('Pulse Oximeter','SpO2 fingertip oximeter','Devices',899,70,'default.jpg',0,899,1),
  ('Aloe Vera Gel','Skin soothing gel','PersonalCare',129,150,'default.jpg',0,129,1),
  ('Cough Syrup 100ml','Relief from cough and cold','Medicines',89,120,'default.jpg',0,89,1),
  ('Probiotic Capsules','Gut health support','Supplements',399,100,'default.jpg',0,399,1),
  ('Protein Powder 1kg','Whey protein concentrate','Supplements',1999,35,'default.jpg',0,1999,1),
  ('Heating Pad','Electric pain relief heating pad','Devices',799,55,'default.jpg',0,799,1);

