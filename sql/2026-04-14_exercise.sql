#订单明细表（记录每个订单买了哪些产品）
CREATE TABLE order_items (
    item_id INT PRIMARY KEY,
    order_id INT,
    product_name VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2)
);
#客户数据
INSERT INTO customers VALUES (1, '张三', '北京');
INSERT INTO customers VALUES (2, '李四', '上海');
INSERT INTO customers VALUES (3, '王五', '广州');
INSERT INTO customers VALUES (4, '赵六', '深圳');
#订单数据
INSERT INTO orders VALUES (101, 1, '2024-01-10', 1500.00);
INSERT INTO orders VALUES (102, 1, '2024-02-15', 2000.00);
INSERT INTO orders VALUES (103, 2, '2024-01-20', 800.00);
INSERT INTO orders VALUES (104, 3, '2024-03-05', 3200.00);
#订单明细数据
INSERT INTO order_items VALUES (1, 101, '手机', 1, 1500.00);
INSERT INTO order_items VALUES (2, 101, '手机壳', 2, 50.00);   -- 实际总额 1500+100=1600？注意订单表total_amount是1500，有出入，但为简化我们忽略，重点是演示连接。
INSERT INTO order_items VALUES (3, 102, '电脑', 1, 2000.00);
INSERT INTO order_items VALUES (4, 103, '键盘', 1, 300.00);
INSERT INTO order_items VALUES (5, 103, '鼠标', 2, 250.00);   -- 总价 300+500=800 匹配订单表
INSERT INTO order_items VALUES (6, 104, '平板', 1, 3200.00);
