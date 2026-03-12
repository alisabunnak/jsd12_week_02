INSERT INTO rentals (customer_id, shoe_id, staff_id, rent_date, return_date, status)
VALUES
(1, 1, 2, '2026-03-01', '2026-03-03', 'returned'),
(2, 3, 1, '2026-03-02', '2026-03-04', 'returned'),
(3, 5, 3, '2026-03-03', NULL, 'rented'),
(4, 7, 2, '2026-03-04', '2026-03-05', 'returned'),
(1, 9, 1, '2026-03-05', NULL, 'rented'),
(2, 11, 3, '2026-03-06', '2026-03-07', 'returned'),
(3, 13, 2, '2026-03-07', NULL, 'rented'),
(4, 15, 1, '2026-03-08', '2026-03-09', 'returned'),
(1, 17, 2, '2026-03-09', NULL, 'rented'),
(2, 20, 3, '2026-03-10', '2026-03-11', 'returned');
