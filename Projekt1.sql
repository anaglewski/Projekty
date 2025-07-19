
-- Create Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name NVARCHAR(100),
    email NVARCHAR(100),
    country NVARCHAR(50)
);

-- Create Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    name NVARCHAR(100),
    category NVARCHAR(50),
    price DECIMAL(10,2)
);

-- Create Orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT FOREIGN KEY REFERENCES customers(customer_id),
    order_date DATE
);

-- Create Order Items Table
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT FOREIGN KEY REFERENCES orders(order_id),
    product_id INT FOREIGN KEY REFERENCES products(product_id),
    quantity INT,
    price DECIMAL(10,2)
);

-- Create Employees Table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name NVARCHAR(100),
    department NVARCHAR(50),
    hire_date DATE
);


INSERT INTO customers (customer_id, name, email, country) VALUES (1, N'Erika Murphy', N'robert02@hotmail.com', N'Barbados');
INSERT INTO customers (customer_id, name, email, country) VALUES (2, N'Shawn Brooks', N'jonathan53@jackson-adams.info', N'Vietnam');
INSERT INTO customers (customer_id, name, email, country) VALUES (3, N'Shelby Cruz', N'jfranco@keller.com', N'Saint Barthelemy');
INSERT INTO customers (customer_id, name, email, country) VALUES (4, N'Judy White', N'gregorygeorge@jackson.com', N'Zambia');
INSERT INTO customers (customer_id, name, email, country) VALUES (5, N'Richard Garner', N'raymond80@hotmail.com', N'French Polynesia');
INSERT INTO customers (customer_id, name, email, country) VALUES (6, N'Jacob Alvarado', N'owensamy@gmail.com', N'Rwanda');
INSERT INTO customers (customer_id, name, email, country) VALUES (7, N'Jeffrey Williams', N'zcook@yahoo.com', N'Netherlands');
INSERT INTO customers (customer_id, name, email, country) VALUES (8, N'Richard Allen', N'rklein@yahoo.com', N'Norfolk Island');
INSERT INTO customers (customer_id, name, email, country) VALUES (9, N'Juan Smith', N'pattonmichelle@gmail.com', N'Haiti');
INSERT INTO customers (customer_id, name, email, country) VALUES (10, N'Jimmy Williams', N'davidhendricks@hotmail.com', N'Belarus');
INSERT INTO customers (customer_id, name, email, country) VALUES (11, N'Lucas Petty', N'duranamber@yahoo.com', N'Saint Vincent and the Grenadines');
INSERT INTO customers (customer_id, name, email, country) VALUES (12, N'Tonya Rogers', N'danielrodriguez@yahoo.com', N'Paraguay');
INSERT INTO customers (customer_id, name, email, country) VALUES (13, N'Brian Baker', N'janettaylor@berg-washington.net', N'Peru');
INSERT INTO customers (customer_id, name, email, country) VALUES (14, N'Alex Riley', N'ethan62@yahoo.com', N'Egypt');
INSERT INTO customers (customer_id, name, email, country) VALUES (15, N'Chad Zuniga', N'wyatt07@hotmail.com', N'Svalbard & Jan Mayen Islands');
INSERT INTO customers (customer_id, name, email, country) VALUES (16, N'Walter Salazar', N'pthompson@gmail.com', N'Chile');
INSERT INTO customers (customer_id, name, email, country) VALUES (17, N'Michelle Wise', N'wbruce@lutz-mckinney.net', N'Dominica');
INSERT INTO customers (customer_id, name, email, country) VALUES (18, N'Nancy Rowland', N'whowell@scott.biz', N'Niue');
INSERT INTO customers (customer_id, name, email, country) VALUES (19, N'Paul Mendez', N'thompsonchristine@gould.com', N'Nicaragua');
INSERT INTO customers (customer_id, name, email, country) VALUES (20, N'Jeremy Wells', N'chill@yahoo.com', N'South Georgia and the South Sandwich Islands');
INSERT INTO customers (customer_id, name, email, country) VALUES (21, N'Paul Thomas', N'brownjennifer@yahoo.com', N'Faroe Islands');
INSERT INTO customers (customer_id, name, email, country) VALUES (22, N'Patrick Fisher', N'apark@hotmail.com', N'New Caledonia');
INSERT INTO customers (customer_id, name, email, country) VALUES (23, N'Matthew Villanueva', N'williamsrobert@gmail.com', N'Myanmar');
INSERT INTO customers (customer_id, name, email, country) VALUES (24, N'Suzanne Perkins', N'careyjames@warren-rojas.com', N'Netherlands');
INSERT INTO customers (customer_id, name, email, country) VALUES (25, N'Victoria Thompson', N'joshuacasey@peterson.com', N'Syrian Arab Republic');
INSERT INTO customers (customer_id, name, email, country) VALUES (26, N'Christopher Rodriguez', N'lewispaul@baker-brown.com', N'Peru');
INSERT INTO customers (customer_id, name, email, country) VALUES (27, N'Holly Daniels', N'omar44@harrison-frederick.com', N'Armenia');
INSERT INTO customers (customer_id, name, email, country) VALUES (28, N'Brenda Campbell', N'evan85@davis.info', N'Haiti');
INSERT INTO customers (customer_id, name, email, country) VALUES (29, N'Laura Rowe', N'william02@yahoo.com', N'Guinea-Bissau');
INSERT INTO customers (customer_id, name, email, country) VALUES (30, N'Lisa Wilson', N'graveskaren@hernandez.com', N'Rwanda');
INSERT INTO customers (customer_id, name, email, country) VALUES (31, N'Kyle Foster', N'leejohn@flynn.com', N'Mozambique');
INSERT INTO customers (customer_id, name, email, country) VALUES (32, N'Sean Smith', N'dwilson@hotmail.com', N'New Zealand');
INSERT INTO customers (customer_id, name, email, country) VALUES (33, N'Sabrina Ware', N'noahweber@carter.com', N'Madagascar');
INSERT INTO customers (customer_id, name, email, country) VALUES (34, N'Stacey Petersen', N'cwilliamson@yahoo.com', N'Libyan Arab Jamahiriya');
INSERT INTO customers (customer_id, name, email, country) VALUES (35, N'Jennifer Taylor', N'sloandavid@guerrero-moses.org', N'Nicaragua');
INSERT INTO customers (customer_id, name, email, country) VALUES (36, N'Mark Owens', N'btorres@yahoo.com', N'Malta');
INSERT INTO customers (customer_id, name, email, country) VALUES (37, N'Mary Moses', N'gstone@williams.com', N'Ireland');
INSERT INTO customers (customer_id, name, email, country) VALUES (38, N'Jacqueline Lee', N'chanvickie@gmail.com', N'Turks and Caicos Islands');
INSERT INTO customers (customer_id, name, email, country) VALUES (39, N'Bryce Miller', N'plewis@hotmail.com', N'Cote d''Ivoire');
INSERT INTO customers (customer_id, name, email, country) VALUES (40, N'Alexis Mitchell', N'wilsontimothy@gmail.com', N'Djibouti');
INSERT INTO customers (customer_id, name, email, country) VALUES (41, N'Patricia Mccormick', N'katherine40@gray.info', N'Myanmar');
INSERT INTO customers (customer_id, name, email, country) VALUES (42, N'Tracy Stokes', N'pgreene@jones.com', N'Saint Lucia');
INSERT INTO customers (customer_id, name, email, country) VALUES (43, N'Victoria Wood', N'scottrogers@ortega-ford.com', N'United Kingdom');
INSERT INTO customers (customer_id, name, email, country) VALUES (44, N'Zachary Vasquez', N'warnold@gmail.com', N'Lebanon');
INSERT INTO customers (customer_id, name, email, country) VALUES (45, N'Taylor Jackson', N'nancy86@yahoo.com', N'Burundi');
INSERT INTO customers (customer_id, name, email, country) VALUES (46, N'Scott Stein', N'william51@yahoo.com', N'Tokelau');
INSERT INTO customers (customer_id, name, email, country) VALUES (47, N'Anthony Ward', N'xdurham@miller.info', N'Eritrea');
INSERT INTO customers (customer_id, name, email, country) VALUES (48, N'Karen Tucker', N'megan15@sanchez.com', N'British Virgin Islands');
INSERT INTO customers (customer_id, name, email, country) VALUES (49, N'Raymond Ramsey', N'jessicareed@hotmail.com', N'Haiti');
INSERT INTO customers (customer_id, name, email, country) VALUES (50, N'Kirk Lara', N'foxantonio@gmail.com', N'Guam');
INSERT INTO customers (customer_id, name, email, country) VALUES (51, N'Jacob Hays', N'danny51@wright.com', N'Guinea');
INSERT INTO customers (customer_id, name, email, country) VALUES (52, N'Tiffany Cobb', N'sean96@yahoo.com', N'Yemen');
INSERT INTO customers (customer_id, name, email, country) VALUES (53, N'John Rodriguez', N'johnmcintyre@gomez.org', N'Brazil');
INSERT INTO customers (customer_id, name, email, country) VALUES (54, N'Felicia Smith', N'courtneycastaneda@yahoo.com', N'New Caledonia');
INSERT INTO customers (customer_id, name, email, country) VALUES (55, N'Keith Torres Jr.', N'rfrancis@hotmail.com', N'Western Sahara');
INSERT INTO customers (customer_id, name, email, country) VALUES (56, N'Whitney Howard', N'loriwebb@baxter-johnson.com', N'Cocos (Keeling) Islands');
INSERT INTO customers (customer_id, name, email, country) VALUES (57, N'Katelyn Curtis', N'elizabeth92@yahoo.com', N'Monaco');
INSERT INTO customers (customer_id, name, email, country) VALUES (58, N'Amber Brown', N'carolynnelson@gallagher.biz', N'Romania');
INSERT INTO customers (customer_id, name, email, country) VALUES (59, N'April Wallace', N'hopkinssylvia@johnson.net', N'Egypt');
INSERT INTO customers (customer_id, name, email, country) VALUES (60, N'Michelle Farmer', N'jasonwiggins@gmail.com', N'Indonesia');
INSERT INTO customers (customer_id, name, email, country) VALUES (61, N'Kimberly Benson', N'anthonybriggs@gmail.com', N'Slovakia (Slovak Republic)');
INSERT INTO customers (customer_id, name, email, country) VALUES (62, N'Tonya Walsh', N'heather26@gmail.com', N'Bahrain');
INSERT INTO customers (customer_id, name, email, country) VALUES (63, N'Jared Hill', N'stephen76@torres-day.com', N'Cameroon');
INSERT INTO customers (customer_id, name, email, country) VALUES (64, N'Jared Carey', N'katiebell@gmail.com', N'Turks and Caicos Islands');
INSERT INTO customers (customer_id, name, email, country) VALUES (65, N'Matthew Ryan', N'hendersonkaylee@williams.info', N'Syrian Arab Republic');
INSERT INTO customers (customer_id, name, email, country) VALUES (66, N'Jimmy Rogers', N'kevinhughes@herring.com', N'Anguilla');
INSERT INTO customers (customer_id, name, email, country) VALUES (67, N'Michelle Williams', N'christopher10@miller.net', N'Thailand');
INSERT INTO customers (customer_id, name, email, country) VALUES (68, N'Monica Allen', N'duncanalexis@hotmail.com', N'Congo');
INSERT INTO customers (customer_id, name, email, country) VALUES (69, N'Monica Brown', N'jessica65@yahoo.com', N'Korea');
INSERT INTO customers (customer_id, name, email, country) VALUES (70, N'Sandra Bell', N'rowens@gmail.com', N'Faroe Islands');
INSERT INTO customers (customer_id, name, email, country) VALUES (71, N'April Griffin', N'robersondaniel@yahoo.com', N'Marshall Islands');
INSERT INTO customers (customer_id, name, email, country) VALUES (72, N'Victor White', N'jamesbuck@hotmail.com', N'Cote d''Ivoire');
INSERT INTO customers (customer_id, name, email, country) VALUES (73, N'George Brown', N'eric62@yahoo.com', N'Sri Lanka');
INSERT INTO customers (customer_id, name, email, country) VALUES (74, N'Edward Mcbride', N'rose73@hotmail.com', N'Somalia');
INSERT INTO customers (customer_id, name, email, country) VALUES (75, N'Jeffrey Burns', N'lisa80@wilcox.com', N'Morocco');
INSERT INTO customers (customer_id, name, email, country) VALUES (76, N'Jon Lopez', N'hansenjonathan@jensen-bradley.com', N'Colombia');
INSERT INTO customers (customer_id, name, email, country) VALUES (77, N'Amy Wood DVM', N'taylor73@gmail.com', N'Taiwan');
INSERT INTO customers (customer_id, name, email, country) VALUES (78, N'Jordan Brown', N'daniellesmith@mejia.org', N'Belize');
INSERT INTO customers (customer_id, name, email, country) VALUES (79, N'Kristine Powers', N'zfrazier@hotmail.com', N'Colombia');
INSERT INTO customers (customer_id, name, email, country) VALUES (80, N'Michael Williams', N'solomonannette@yahoo.com', N'Sao Tome and Principe');
INSERT INTO customers (customer_id, name, email, country) VALUES (81, N'Brenda Montoya', N'audreyjohnson@gmail.com', N'South Georgia and the South Sandwich Islands');
INSERT INTO customers (customer_id, name, email, country) VALUES (82, N'Patrick Watts', N'smithjeremy@williams.com', N'Zimbabwe');
INSERT INTO customers (customer_id, name, email, country) VALUES (83, N'Jose Vaughn', N'dsherman@lopez.com', N'Pitcairn Islands');
INSERT INTO customers (customer_id, name, email, country) VALUES (84, N'Kevin Long', N'zharris@buckley.com', N'Norway');
INSERT INTO customers (customer_id, name, email, country) VALUES (85, N'Benjamin Harris', N'mendozaalison@hotmail.com', N'Cote d''Ivoire');
INSERT INTO customers (customer_id, name, email, country) VALUES (86, N'Joseph West', N'nicholas84@yahoo.com', N'Mayotte');
INSERT INTO customers (customer_id, name, email, country) VALUES (87, N'Jerome Reynolds', N'lorimendoza@hotmail.com', N'Spain');
INSERT INTO customers (customer_id, name, email, country) VALUES (88, N'Lisa Brock', N'varmstrong@alvarez.com', N'Burkina Faso');
INSERT INTO customers (customer_id, name, email, country) VALUES (89, N'Brandi Bailey', N'andersonrebecca@gmail.com', N'Liberia');
INSERT INTO customers (customer_id, name, email, country) VALUES (90, N'Nicole Smith', N'brittany84@yahoo.com', N'Western Sahara');
INSERT INTO customers (customer_id, name, email, country) VALUES (91, N'Francisco Bauer', N'zsmith@livingston.com', N'South Africa');
INSERT INTO customers (customer_id, name, email, country) VALUES (92, N'Erica Wood', N'martinhowell@gmail.com', N'Bermuda');
INSERT INTO customers (customer_id, name, email, country) VALUES (93, N'Ronald Miller', N'jeffreymercer@woods-herring.com', N'Niue');
INSERT INTO customers (customer_id, name, email, country) VALUES (94, N'Angela Jones', N'zortiz@reynolds.net', N'Cape Verde');
INSERT INTO customers (customer_id, name, email, country) VALUES (95, N'Dalton Thomas', N'freemanivan@hotmail.com', N'Guinea');
INSERT INTO customers (customer_id, name, email, country) VALUES (96, N'Karen Chen', N'josephhancock@ewing.com', N'Kazakhstan');
INSERT INTO customers (customer_id, name, email, country) VALUES (97, N'Anna Smith', N'jordan24@hotmail.com', N'Cameroon');
INSERT INTO customers (customer_id, name, email, country) VALUES (98, N'Anthony Ruiz', N'william60@hotmail.com', N'Cuba');
INSERT INTO customers (customer_id, name, email, country) VALUES (99, N'Sara Kelly', N'jharris@gmail.com', N'United States of America');
INSERT INTO customers (customer_id, name, email, country) VALUES (100, N'Brittney Farley', N'isparks@clark-howard.com', N'Honduras');

INSERT INTO products (product_id, name, category, price) VALUES (1, N'Garden', N'Sports', 773.4);
INSERT INTO products (product_id, name, category, price) VALUES (2, N'Million', N'Electronics', 105.53);
INSERT INTO products (product_id, name, category, price) VALUES (3, N'Inside', N'Electronics', 304.36);
INSERT INTO products (product_id, name, category, price) VALUES (4, N'Cover', N'Books', 298.0);
INSERT INTO products (product_id, name, category, price) VALUES (5, N'Window', N'Clothing', 463.95);
INSERT INTO products (product_id, name, category, price) VALUES (6, N'Card', N'Clothing', 210.06);
INSERT INTO products (product_id, name, category, price) VALUES (7, N'North', N'Home', 69.04);
INSERT INTO products (product_id, name, category, price) VALUES (8, N'Camera', N'Books', 500.33);
INSERT INTO products (product_id, name, category, price) VALUES (9, N'Also', N'Sports', 922.15);
INSERT INTO products (product_id, name, category, price) VALUES (10, N'Huge', N'Clothing', 169.11);
INSERT INTO products (product_id, name, category, price) VALUES (11, N'Admit', N'Sports', 322.07);
INSERT INTO products (product_id, name, category, price) VALUES (12, N'Top', N'Home', 876.6);
INSERT INTO products (product_id, name, category, price) VALUES (13, N'Low', N'Home', 826.2);
INSERT INTO products (product_id, name, category, price) VALUES (14, N'Ready', N'Books', 235.56);
INSERT INTO products (product_id, name, category, price) VALUES (15, N'Trip', N'Books', 473.21);
INSERT INTO products (product_id, name, category, price) VALUES (16, N'Laugh', N'Electronics', 778.09);
INSERT INTO products (product_id, name, category, price) VALUES (17, N'Five', N'Sports', 827.56);
INSERT INTO products (product_id, name, category, price) VALUES (18, N'Four', N'Electronics', 395.66);
INSERT INTO products (product_id, name, category, price) VALUES (19, N'Whole', N'Sports', 398.65);
INSERT INTO products (product_id, name, category, price) VALUES (20, N'Impact', N'Sports', 847.2);
INSERT INTO products (product_id, name, category, price) VALUES (21, N'Short', N'Clothing', 35.22);
INSERT INTO products (product_id, name, category, price) VALUES (22, N'Purpose', N'Clothing', 874.73);
INSERT INTO products (product_id, name, category, price) VALUES (23, N'Front', N'Electronics', 232.84);
INSERT INTO products (product_id, name, category, price) VALUES (24, N'Beautiful', N'Books', 132.32);
INSERT INTO products (product_id, name, category, price) VALUES (25, N'Everybody', N'Home', 971.11);
INSERT INTO products (product_id, name, category, price) VALUES (26, N'Owner', N'Home', 794.91);
INSERT INTO products (product_id, name, category, price) VALUES (27, N'Social', N'Electronics', 739.75);
INSERT INTO products (product_id, name, category, price) VALUES (28, N'Rise', N'Home', 778.49);
INSERT INTO products (product_id, name, category, price) VALUES (29, N'Expert', N'Home', 270.69);
INSERT INTO products (product_id, name, category, price) VALUES (30, N'Blood', N'Sports', 48.62);
INSERT INTO products (product_id, name, category, price) VALUES (31, N'High', N'Home', 112.93);
INSERT INTO products (product_id, name, category, price) VALUES (32, N'Already', N'Electronics', 243.33);
INSERT INTO products (product_id, name, category, price) VALUES (33, N'Very', N'Home', 408.59);
INSERT INTO products (product_id, name, category, price) VALUES (34, N'Always', N'Home', 770.3);
INSERT INTO products (product_id, name, category, price) VALUES (35, N'Then', N'Electronics', 931.85);
INSERT INTO products (product_id, name, category, price) VALUES (36, N'Finish', N'Electronics', 501.45);
INSERT INTO products (product_id, name, category, price) VALUES (37, N'Anyone', N'Home', 765.1);
INSERT INTO products (product_id, name, category, price) VALUES (38, N'Miss', N'Clothing', 369.64);
INSERT INTO products (product_id, name, category, price) VALUES (39, N'Claim', N'Electronics', 620.03);
INSERT INTO products (product_id, name, category, price) VALUES (40, N'Base', N'Sports', 781.05);
INSERT INTO products (product_id, name, category, price) VALUES (41, N'Their', N'Home', 438.11);
INSERT INTO products (product_id, name, category, price) VALUES (42, N'Call', N'Electronics', 689.44);
INSERT INTO products (product_id, name, category, price) VALUES (43, N'Hit', N'Books', 61.6);
INSERT INTO products (product_id, name, category, price) VALUES (44, N'Cause', N'Sports', 361.21);
INSERT INTO products (product_id, name, category, price) VALUES (45, N'Energy', N'Electronics', 48.21);
INSERT INTO products (product_id, name, category, price) VALUES (46, N'Particularly', N'Electronics', 490.16);
INSERT INTO products (product_id, name, category, price) VALUES (47, N'Who', N'Books', 97.96);
INSERT INTO products (product_id, name, category, price) VALUES (48, N'Environment', N'Electronics', 96.18);
INSERT INTO products (product_id, name, category, price) VALUES (49, N'Top', N'Home', 413.4);
INSERT INTO products (product_id, name, category, price) VALUES (50, N'Seat', N'Electronics', 428.91);
INSERT INTO products (product_id, name, category, price) VALUES (51, N'Sister', N'Clothing', 457.84);
INSERT INTO products (product_id, name, category, price) VALUES (52, N'Relate', N'Sports', 95.02);
INSERT INTO products (product_id, name, category, price) VALUES (53, N'Finally', N'Clothing', 281.68);
INSERT INTO products (product_id, name, category, price) VALUES (54, N'Into', N'Books', 287.17);
INSERT INTO products (product_id, name, category, price) VALUES (55, N'Later', N'Books', 344.67);
INSERT INTO products (product_id, name, category, price) VALUES (56, N'Rate', N'Electronics', 27.4);
INSERT INTO products (product_id, name, category, price) VALUES (57, N'Plant', N'Home', 851.64);
INSERT INTO products (product_id, name, category, price) VALUES (58, N'Tough', N'Books', 839.74);
INSERT INTO products (product_id, name, category, price) VALUES (59, N'Study', N'Home', 295.8);
INSERT INTO products (product_id, name, category, price) VALUES (60, N'Especially', N'Books', 680.02);
INSERT INTO products (product_id, name, category, price) VALUES (61, N'Performance', N'Books', 585.4);
INSERT INTO products (product_id, name, category, price) VALUES (62, N'Behavior', N'Clothing', 718.31);
INSERT INTO products (product_id, name, category, price) VALUES (63, N'North', N'Clothing', 794.45);
INSERT INTO products (product_id, name, category, price) VALUES (64, N'Collection', N'Clothing', 983.26);
INSERT INTO products (product_id, name, category, price) VALUES (65, N'Since', N'Clothing', 928.32);
INSERT INTO products (product_id, name, category, price) VALUES (66, N'Never', N'Clothing', 543.6);
INSERT INTO products (product_id, name, category, price) VALUES (67, N'Fly', N'Sports', 23.73);
INSERT INTO products (product_id, name, category, price) VALUES (68, N'Staff', N'Electronics', 861.52);
INSERT INTO products (product_id, name, category, price) VALUES (69, N'Say', N'Books', 366.61);
INSERT INTO products (product_id, name, category, price) VALUES (70, N'Your', N'Books', 938.07);
INSERT INTO products (product_id, name, category, price) VALUES (71, N'Catch', N'Sports', 284.56);
INSERT INTO products (product_id, name, category, price) VALUES (72, N'Cause', N'Home', 867.26);
INSERT INTO products (product_id, name, category, price) VALUES (73, N'Bag', N'Clothing', 673.24);
INSERT INTO products (product_id, name, category, price) VALUES (74, N'Point', N'Home', 67.54);
INSERT INTO products (product_id, name, category, price) VALUES (75, N'Though', N'Sports', 734.43);
INSERT INTO products (product_id, name, category, price) VALUES (76, N'Sometimes', N'Clothing', 508.11);
INSERT INTO products (product_id, name, category, price) VALUES (77, N'Partner', N'Clothing', 219.5);
INSERT INTO products (product_id, name, category, price) VALUES (78, N'Boy', N'Books', 471.06);
INSERT INTO products (product_id, name, category, price) VALUES (79, N'Certainly', N'Electronics', 665.78);
INSERT INTO products (product_id, name, category, price) VALUES (80, N'Discussion', N'Home', 330.21);
INSERT INTO products (product_id, name, category, price) VALUES (81, N'Through', N'Sports', 432.37);
INSERT INTO products (product_id, name, category, price) VALUES (82, N'Husband', N'Electronics', 456.51);
INSERT INTO products (product_id, name, category, price) VALUES (83, N'Activity', N'Clothing', 435.24);
INSERT INTO products (product_id, name, category, price) VALUES (84, N'Growth', N'Electronics', 533.99);
INSERT INTO products (product_id, name, category, price) VALUES (85, N'As', N'Electronics', 84.78);
INSERT INTO products (product_id, name, category, price) VALUES (86, N'Rather', N'Electronics', 672.79);
INSERT INTO products (product_id, name, category, price) VALUES (87, N'Wide', N'Clothing', 950.99);
INSERT INTO products (product_id, name, category, price) VALUES (88, N'Kitchen', N'Books', 960.91);
INSERT INTO products (product_id, name, category, price) VALUES (89, N'Upon', N'Home', 854.46);
INSERT INTO products (product_id, name, category, price) VALUES (90, N'Change', N'Home', 247.92);
INSERT INTO products (product_id, name, category, price) VALUES (91, N'Piece', N'Sports', 627.86);
INSERT INTO products (product_id, name, category, price) VALUES (92, N'Water', N'Sports', 908.84);
INSERT INTO products (product_id, name, category, price) VALUES (93, N'Capital', N'Electronics', 761.19);
INSERT INTO products (product_id, name, category, price) VALUES (94, N'Land', N'Clothing', 926.89);
INSERT INTO products (product_id, name, category, price) VALUES (95, N'Operation', N'Sports', 955.71);
INSERT INTO products (product_id, name, category, price) VALUES (96, N'Music', N'Electronics', 998.51);
INSERT INTO products (product_id, name, category, price) VALUES (97, N'Put', N'Electronics', 470.31);
INSERT INTO products (product_id, name, category, price) VALUES (98, N'Foot', N'Sports', 144.3);
INSERT INTO products (product_id, name, category, price) VALUES (99, N'Money', N'Home', 232.38);
INSERT INTO products (product_id, name, category, price) VALUES (100, N'Fund', N'Home', 278.29);

INSERT INTO orders (order_id, customer_id, order_date) VALUES (1, 90, '2025-06-30');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (2, 62, '2024-11-09');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (3, 69, '2025-05-13');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (4, 98, '2024-10-22');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (5, 53, '2024-08-28');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (6, 5, '2024-10-14');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (7, 96, '2025-03-29');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (8, 64, '2025-03-10');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (9, 69, '2025-02-13');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (10, 21, '2024-09-21');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (11, 38, '2025-03-04');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (12, 91, '2024-11-09');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (13, 97, '2024-10-01');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (14, 59, '2025-06-21');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (15, 36, '2024-12-18');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (16, 66, '2025-02-22');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (17, 22, '2024-10-11');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (18, 19, '2025-06-01');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (19, 13, '2025-06-25');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (20, 9, '2025-06-08');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (21, 66, '2024-08-05');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (22, 46, '2024-10-17');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (23, 36, '2025-02-06');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (24, 15, '2024-12-23');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (25, 16, '2025-02-05');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (26, 23, '2025-02-10');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (27, 91, '2025-02-10');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (28, 29, '2025-06-29');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (29, 40, '2024-12-07');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (30, 74, '2024-09-07');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (31, 27, '2025-04-26');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (32, 66, '2025-05-30');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (33, 72, '2025-04-06');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (34, 10, '2025-01-14');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (35, 75, '2024-10-23');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (36, 38, '2024-08-30');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (37, 79, '2025-06-18');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (38, 75, '2024-12-30');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (39, 76, '2024-11-29');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (40, 18, '2024-08-21');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (41, 87, '2025-06-17');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (42, 42, '2024-11-17');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (43, 39, '2025-06-17');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (44, 6, '2025-05-15');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (45, 66, '2025-05-29');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (46, 64, '2025-04-28');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (47, 29, '2024-07-20');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (48, 28, '2024-11-13');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (49, 60, '2025-04-05');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (50, 54, '2025-06-10');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (51, 5, '2025-06-13');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (52, 93, '2024-11-13');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (53, 41, '2025-07-14');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (54, 79, '2025-04-07');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (55, 13, '2025-05-14');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (56, 41, '2025-04-10');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (57, 55, '2025-02-15');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (58, 54, '2024-11-22');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (59, 4, '2024-08-09');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (60, 37, '2025-05-05');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (61, 66, '2024-09-13');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (62, 48, '2025-01-22');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (63, 78, '2024-08-22');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (64, 15, '2025-04-04');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (65, 3, '2024-09-04');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (66, 85, '2025-02-26');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (67, 47, '2024-08-19');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (68, 92, '2025-02-22');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (69, 64, '2025-05-07');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (70, 36, '2025-02-27');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (71, 98, '2025-03-20');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (72, 79, '2025-01-29');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (73, 35, '2024-09-15');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (74, 90, '2024-11-08');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (75, 5, '2024-11-17');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (76, 91, '2024-09-29');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (77, 44, '2024-10-11');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (78, 3, '2025-06-24');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (79, 41, '2024-10-28');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (80, 44, '2025-04-17');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (81, 41, '2024-10-09');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (82, 21, '2024-08-18');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (83, 36, '2024-07-19');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (84, 6, '2024-09-04');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (85, 94, '2024-08-15');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (86, 46, '2025-07-07');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (87, 81, '2024-08-14');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (88, 51, '2024-10-23');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (89, 81, '2024-09-24');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (90, 44, '2025-03-18');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (91, 6, '2024-08-27');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (92, 84, '2024-09-17');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (93, 9, '2025-06-18');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (94, 18, '2025-01-31');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (95, 31, '2024-12-18');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (96, 42, '2024-08-31');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (97, 84, '2025-04-11');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (98, 79, '2025-01-30');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (99, 79, '2025-02-01');
INSERT INTO orders (order_id, customer_id, order_date) VALUES (100, 15, '2024-10-28');

INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (1.0, 15.0, 59.0, 5, 20.15);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (2.0, 76.0, 51.0, 3, 312.58);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (3.0, 97.0, 33.0, 4, 551.1);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (4.0, 43.0, 45.0, 2, 984.45);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (5.0, 95.0, 34.0, 3, 234.57);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (6.0, 51.0, 2.0, 3, 820.3);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (7.0, 26.0, 25.0, 3, 726.23);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (8.0, 94.0, 3.0, 4, 850.64);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (9.0, 97.0, 81.0, 1, 582.43);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (10.0, 24.0, 65.0, 5, 996.61);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (11.0, 97.0, 7.0, 4, 163.16);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (12.0, 37.0, 15.0, 5, 176.49);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (13.0, 41.0, 26.0, 1, 217.03);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (14.0, 74.0, 2.0, 5, 199.99);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (15.0, 83.0, 7.0, 4, 404.12);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (16.0, 54.0, 63.0, 4, 129.0);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (17.0, 20.0, 1.0, 1, 531.38);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (18.0, 65.0, 14.0, 1, 452.73);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (19.0, 89.0, 72.0, 1, 463.52);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (20.0, 90.0, 51.0, 4, 258.2);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (21.0, 10.0, 80.0, 4, 187.31);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (22.0, 65.0, 13.0, 5, 540.2);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (23.0, 24.0, 15.0, 2, 254.91);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (24.0, 67.0, 98.0, 4, 272.05);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (25.0, 82.0, 14.0, 5, 736.03);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (26.0, 24.0, 32.0, 3, 537.85);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (27.0, 36.0, 85.0, 4, 471.87);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (28.0, 85.0, 69.0, 5, 697.82);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (29.0, 12.0, 62.0, 3, 371.85);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (30.0, 80.0, 18.0, 4, 973.4);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (31.0, 79.0, 8.0, 5, 963.84);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (32.0, 19.0, 46.0, 1, 731.92);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (33.0, 63.0, 91.0, 4, 917.87);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (34.0, 69.0, 25.0, 4, 555.75);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (35.0, 83.0, 29.0, 2, 103.93);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (36.0, 17.0, 43.0, 4, 284.82);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (37.0, 17.0, 74.0, 1, 384.63);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (38.0, 29.0, 67.0, 4, 753.37);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (39.0, 56.0, 34.0, 2, 457.92);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (40.0, 40.0, 39.0, 4, 333.61);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (41.0, 50.0, 71.0, 1, 742.11);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (42.0, 65.0, 77.0, 5, 614.61);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (43.0, 30.0, 68.0, 1, 556.38);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (44.0, 50.0, 60.0, 5, 402.97);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (45.0, 43.0, 21.0, 2, 924.47);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (46.0, 92.0, 100.0, 3, 621.09);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (47.0, 43.0, 23.0, 2, 998.99);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (48.0, 73.0, 94.0, 4, 313.72);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (49.0, 92.0, 48.0, 1, 937.99);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (50.0, 52.0, 42.0, 2, 410.85);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (51.0, 10.0, 83.0, 1, 626.64);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (52.0, 93.0, 55.0, 5, 386.04);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (53.0, 100.0, 51.0, 4, 140.34);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (54.0, 82.0, 43.0, 3, 15.97);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (55.0, 20.0, 49.0, 3, 356.48);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (56.0, 64.0, 32.0, 3, 654.18);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (57.0, 20.0, 66.0, 4, 89.76);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (58.0, 48.0, 86.0, 3, 985.69);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (59.0, 15.0, 24.0, 5, 474.94);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (60.0, 60.0, 71.0, 1, 266.11);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (61.0, 96.0, 94.0, 2, 531.11);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (62.0, 100.0, 18.0, 3, 270.46);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (63.0, 97.0, 92.0, 4, 107.31);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (64.0, 3.0, 90.0, 5, 601.01);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (65.0, 38.0, 38.0, 2, 772.34);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (66.0, 8.0, 66.0, 1, 324.96);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (67.0, 25.0, 11.0, 5, 28.57);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (68.0, 21.0, 7.0, 3, 511.6);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (69.0, 4.0, 86.0, 5, 515.96);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (70.0, 23.0, 35.0, 3, 968.16);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (71.0, 30.0, 16.0, 3, 783.35);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (72.0, 66.0, 41.0, 2, 294.54);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (73.0, 18.0, 30.0, 5, 517.43);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (74.0, 74.0, 39.0, 3, 25.5);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (75.0, 27.0, 11.0, 1, 407.37);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (76.0, 7.0, 48.0, 5, 878.68);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (77.0, 64.0, 20.0, 3, 280.6);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (78.0, 3.0, 41.0, 3, 78.31);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (79.0, 72.0, 77.0, 1, 636.48);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (80.0, 27.0, 93.0, 1, 149.73);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (81.0, 56.0, 22.0, 1, 538.27);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (82.0, 13.0, 5.0, 1, 711.89);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (83.0, 34.0, 25.0, 1, 66.01);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (84.0, 45.0, 78.0, 5, 108.69);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (85.0, 41.0, 87.0, 3, 600.14);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (86.0, 67.0, 92.0, 2, 529.59);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (87.0, 72.0, 50.0, 1, 957.32);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (88.0, 37.0, 89.0, 3, 324.89);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (89.0, 24.0, 29.0, 3, 947.98);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (90.0, 63.0, 77.0, 1, 289.56);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (91.0, 43.0, 72.0, 3, 959.87);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (92.0, 5.0, 96.0, 4, 429.68);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (93.0, 96.0, 2.0, 5, 818.75);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (94.0, 64.0, 20.0, 4, 66.88);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (95.0, 39.0, 13.0, 3, 104.6);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (96.0, 56.0, 43.0, 1, 430.22);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (97.0, 93.0, 6.0, 3, 154.77);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (98.0, 89.0, 31.0, 2, 506.1);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (99.0, 61.0, 38.0, 5, 169.62);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (100.0, 19.0, 99.0, 4, 90.47);

INSERT INTO employees (employee_id, name, department, hire_date) VALUES (1, N'Paula Shelton', N'HR', '2023-04-02');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (2, N'Charles Williams', N'Logistics', '2023-06-08');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (3, N'Trevor Fletcher', N'HR', '2022-08-06');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (4, N'Veronica Tran', N'Logistics', '2021-08-10');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (5, N'Holly Roth', N'Support', '2022-11-09');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (6, N'Jason Larson', N'Sales', '2023-07-21');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (7, N'Jeffrey Garcia', N'Logistics', '2021-01-22');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (8, N'Brenda Bell', N'Logistics', '2024-04-20');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (9, N'Carol Caldwell', N'IT', '2023-10-07');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (10, N'Jill Christensen', N'Support', '2024-06-16');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (11, N'Jason Silva', N'Support', '2020-10-16');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (12, N'James Johnson', N'Sales', '2023-09-09');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (13, N'Mr. Timothy Townsend', N'Logistics', '2023-02-08');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (14, N'Steven Williams', N'Logistics', '2021-10-01');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (15, N'Jeremy Braun', N'Logistics', '2021-10-25');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (16, N'Rodney Martinez', N'Support', '2022-03-12');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (17, N'Robert Roman', N'HR', '2024-04-18');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (18, N'Patricia Hoover', N'IT', '2020-09-09');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (19, N'Samantha Ray', N'Support', '2021-07-01');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (20, N'Paul Bowman', N'Logistics', '2022-10-12');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (21, N'Christopher Rodriguez', N'Sales', '2024-06-19');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (22, N'Dr. Ronnie Miller', N'Sales', '2022-11-01');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (23, N'Devin Jones', N'HR', '2021-05-01');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (24, N'Timothy Taylor', N'IT', '2023-03-17');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (25, N'Jay Armstrong', N'Support', '2022-05-26');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (26, N'Juan Ewing', N'Support', '2023-11-26');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (27, N'Marcus Lee', N'HR', '2024-02-07');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (28, N'Aaron Kelly', N'IT', '2023-05-19');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (29, N'Darius Richardson', N'IT', '2022-04-01');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (30, N'Christopher Perry', N'IT', '2022-05-29');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (31, N'Anthony Guzman', N'Sales', '2024-05-06');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (32, N'Dr. Luke Brooks', N'Support', '2024-04-20');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (33, N'Joshua Barron', N'Support', '2020-08-09');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (34, N'Michael Horne', N'Logistics', '2021-02-24');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (35, N'Travis Fowler', N'Support', '2023-11-28');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (36, N'Taylor Mcdowell', N'IT', '2022-05-11');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (37, N'Colleen Medina', N'IT', '2024-01-23');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (38, N'Colleen Rodriguez', N'HR', '2022-03-27');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (39, N'Taylor Phillips', N'Logistics', '2022-01-04');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (40, N'Randall Smith', N'Sales', '2021-05-14');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (41, N'Steven Guerrero', N'IT', '2021-03-23');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (42, N'Michael Davidson', N'Support', '2021-08-03');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (43, N'Michael George', N'Logistics', '2021-03-19');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (44, N'Ronald Chase', N'IT', '2022-07-01');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (45, N'Wendy Armstrong', N'Logistics', '2023-02-06');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (46, N'Anna Bryan', N'HR', '2021-06-26');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (47, N'Amanda Sanchez', N'Support', '2021-01-15');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (48, N'Jeffrey Sawyer', N'IT', '2024-07-09');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (49, N'Randall Holder', N'Sales', '2023-05-25');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (50, N'Eric Kim', N'Support', '2022-08-15');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (51, N'Tamara Wells', N'HR', '2024-01-26');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (52, N'Gary Smith', N'HR', '2022-10-25');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (53, N'Edward Morris', N'Logistics', '2024-01-15');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (54, N'William Lopez', N'HR', '2021-03-30');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (55, N'Michelle Underwood', N'Sales', '2023-10-25');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (56, N'Craig Colon', N'Sales', '2024-06-20');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (57, N'Laura Moreno', N'IT', '2022-11-29');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (58, N'Lauren Peterson', N'Sales', '2022-02-13');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (59, N'Catherine Huff', N'Support', '2024-07-04');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (60, N'Tammy Olson', N'Logistics', '2020-08-23');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (61, N'Michael Smith', N'Sales', '2021-09-21');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (62, N'Kevin Clark', N'Sales', '2021-04-23');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (63, N'Heather Hall', N'Support', '2022-10-10');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (64, N'Mrs. Susan Jensen', N'IT', '2020-07-23');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (65, N'Elizabeth Burke', N'Support', '2020-12-30');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (66, N'Ashley Fry', N'HR', '2021-09-15');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (67, N'Jose Gonzalez', N'HR', '2024-05-17');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (68, N'Jane Peterson', N'Sales', '2021-07-23');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (69, N'Sharon Riley', N'Sales', '2023-01-18');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (70, N'Jillian Anderson', N'HR', '2021-07-08');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (71, N'Pamela Moore', N'HR', '2021-01-23');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (72, N'Gloria Burke', N'IT', '2021-07-03');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (73, N'Robert Carter', N'IT', '2023-03-19');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (74, N'Kenneth Clark', N'HR', '2024-03-16');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (75, N'Donna Smith', N'HR', '2024-04-05');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (76, N'Shirley Jones', N'HR', '2021-01-24');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (77, N'David Brown', N'HR', '2020-09-04');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (78, N'Catherine Garrett', N'Sales', '2022-02-06');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (79, N'Francisco Bennett', N'Sales', '2022-12-21');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (80, N'Autumn Porter', N'Sales', '2022-06-30');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (81, N'Patricia Palmer', N'IT', '2021-02-02');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (82, N'Allison Moore', N'Sales', '2023-07-08');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (83, N'Anna Smith', N'HR', '2022-09-18');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (84, N'Joseph Flores', N'IT', '2023-05-27');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (85, N'Elizabeth Charles', N'Sales', '2023-05-08');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (86, N'Larry Mason', N'Sales', '2021-09-24');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (87, N'Teresa Smith', N'Logistics', '2021-08-04');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (88, N'Ryan Cooley', N'Support', '2023-10-03');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (89, N'Jordan Conrad', N'IT', '2020-11-07');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (90, N'Caleb Pierce', N'Sales', '2022-04-06');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (91, N'William Davis', N'HR', '2022-03-24');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (92, N'Caroline Collins', N'HR', '2020-12-19');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (93, N'David Day', N'Sales', '2021-08-21');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (94, N'Patricia Martinez', N'Support', '2023-01-12');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (95, N'Kelly Sanchez', N'Sales', '2023-11-12');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (96, N'Rebecca Morrison', N'IT', '2023-06-13');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (97, N'Daniel Mack', N'Logistics', '2020-11-03');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (98, N'Matthew Dean', N'IT', '2022-07-19');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (99, N'Erin Walters', N'HR', '2020-09-27');
INSERT INTO employees (employee_id, name, department, hire_date) VALUES (100, N'Kristi Sellers MD', N'Logistics', '2023-09-22');

-- VIEWS --

-- View 1: Customer Order Summary
CREATE VIEW vw_customer_order_summary AS
SELECT 
    c.customer_id,
    c.name,
    COUNT(o.order_id) AS total_orders,
    SUM(oi.price * oi.quantity) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.customer_id, c.name;

-- View 2: Product Sales Summary
CREATE VIEW vw_product_sales AS
SELECT 
    p.product_id,
    p.name AS product_name,
    SUM(oi.quantity) AS total_quantity_sold,
    SUM(oi.price * oi.quantity) AS total_revenue
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_id, p.name;

-- View 3: Employee Count by Department
CREATE VIEW vw_department_employee_count AS
SELECT 
    department,
    COUNT(*) AS employee_count
FROM employees
GROUP BY department;


-- PROCEDURES --

-- Procedure 1: Get Customer Purchase History
CREATE PROCEDURE sp_get_customer_purchases
    @customer_id INT
AS
BEGIN
    SELECT 
        o.order_id,
        o.order_date,
        p.name AS product_name,
        oi.quantity,
        oi.price
    FROM orders o
    JOIN order_items oi ON o.order_id = oi.order_id
    JOIN products p ON oi.product_id = p.product_id
    WHERE o.customer_id = @customer_id;
END;

-- Procedure 2: Get Orders by Date Range
CREATE PROCEDURE sp_get_orders_by_date
    @start_date DATE,
    @end_date DATE
AS
BEGIN
    SELECT 
        o.order_id,
        o.order_date,
        c.name AS customer_name,
        SUM(oi.quantity * oi.price) AS total_value
    FROM orders o
    JOIN customers c ON o.customer_id = c.customer_id
    JOIN order_items oi ON o.order_id = oi.order_id
    WHERE o.order_date BETWEEN @start_date AND @end_date
    GROUP BY o.order_id, o.order_date, c.name;
END;

-- Procedure 3: List Employees by Department
CREATE PROCEDURE sp_list_employees_by_department
    @department NVARCHAR(50)
AS
BEGIN
    SELECT 
        employee_id,
        name,
        hire_date
    FROM employees
    WHERE department = @department;
END;


-- TRIGGERS --

-- Trigger 1: Log order insertion
CREATE TABLE order_log (
    log_id INT IDENTITY PRIMARY KEY,
    order_id INT,
    customer_id INT,
    created_at DATETIME DEFAULT GETDATE()
);

CREATE TRIGGER trg_log_order_insert
ON orders
AFTER INSERT
AS
BEGIN
    INSERT INTO order_log (order_id, customer_id)
    SELECT order_id, customer_id FROM inserted;
END;

-- Trigger 2: Validate order item quantity
CREATE TRIGGER trg_validate_order_item
ON order_items
INSTEAD OF INSERT
AS
BEGIN
    IF EXISTS (SELECT * FROM inserted WHERE quantity <= 0)
    BEGIN
        RAISERROR('Quantity must be greater than 0.', 16, 1);
    END
    ELSE
    BEGIN
        INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price)
        SELECT order_item_id, order_id, product_id, quantity, price FROM inserted;
    END
END;

-- Trigger 3: Track employee insertions
CREATE TABLE employee_audit (
    audit_id INT IDENTITY PRIMARY KEY,
    employee_id INT,
    name NVARCHAR(100),
    department NVARCHAR(50),
    inserted_at DATETIME DEFAULT GETDATE()
);

CREATE TRIGGER trg_employee_insert
ON employees
AFTER INSERT
AS
BEGIN
    INSERT INTO employee_audit (employee_id, name, department)
    SELECT employee_id, name, department FROM inserted;
END;
