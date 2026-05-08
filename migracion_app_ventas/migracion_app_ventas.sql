DROP TABLE category_appv;
DROP TABLE productos_appv;

CREATE TABLE category_appv (
    id SERIAL PRIMARY KEY,
    categoria VARCHAR(25) NOT NULL,
    descripcion VARCHAR(100) NOT NULL,
    status VARCHAR(20) NOT NULL DEFAULT 'ACTIVO',
    created_at TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITHOUT TIME ZONE,
    deleted_at TIMESTAMP WITHOUT TIME ZONE,

    CONSTRAINT uq_categoria UNIQUE (categoria)
);

-- Índice para búsquedas rápidas por nombre de categoría
CREATE INDEX idx_category_appv_categoria ON category_appv(categoria);

-- (Opcional) Índice para estado si es muy filtrado
CREATE INDEX idx_category_appv_status ON category_appv(status);



CREATE TABLE productos_appv (
    id BIGSERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    numero_serie VARCHAR(30) NOT NULL UNIQUE,
    descripcion VARCHAR(255) NOT NULL,
    precio DOUBLE PRECISION NOT NULL CHECK (precio > 0),
    stock INTEGER NOT NULL CHECK (stock >= 0),
    id_categoria INTEGER NOT NULL,
    imagen_url TEXT,
    fecha_creacion TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP,
    activo BOOLEAN NOT NULL DEFAULT TRUE,
    CONSTRAINT fk_productos_categoria FOREIGN KEY (id_categoria)
        REFERENCES category_appv(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);
CREATE INDEX idx_productos_id_categoria ON productos_appv(id_categoria);