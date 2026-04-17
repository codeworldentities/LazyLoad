-- Auto-generated: stored procedure v1888
-- Created for project optimization

CREATE TABLE IF NOT EXISTS stored_procedure_1888 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    status VARCHAR(50) DEFAULT 'active',
    score DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_1888_name
    ON stored_procedure_1888(name);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_1888_created
    ON stored_procedure_1888(created_at DESC);

-- Seed data
INSERT INTO stored_procedure_1888 (name, description)
VALUES
    ('item_0', 'val_0_1888'),
    ('item_1', 'val_1_1888'),
    ('item_2', 'val_2_1888'),
    ('item_3', 'val_3_1888'),
    ('item_4', 'val_4_1888'),
    ('item_5', 'val_5_1888'),
    ('item_6', 'val_6_1888');

-- View
CREATE OR REPLACE VIEW v_stored_procedure_1888_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM stored_procedure_1888
GROUP BY name
ORDER BY total DESC;
