INSERT INTO category_appv (categoria, descripcion, status)
VALUES
  ('Electrónica', 'Dispositivos electrónicos', 'ACTIVO'),
  ('Ropa', 'Vestimenta y accesorios', 'ACTIVO'),
  ('Libros', 'Libros y literatura', 'ACTIVO');
  
INSERT INTO productos_appv (
    nombre, numero_serie, descripcion, precio, stock, id_categoria, imagen_url, activo
)
VALUES
  ('Smartphone X', 'SN-10001', 'Teléfono inteligente de última generación', 450.00, 25, 1, 'url.com/smartphone.jpg', TRUE),
  ('Jeans Slim Fit', 'SN-20001', 'Jeans modernos, azul oscuro', 39.99, 100, 2, 'url.com/jeans.jpg', TRUE),
  ('El Quijote', 'SN-30001', 'Novela clásica española', 12.50, 40, 3, NULL, TRUE);