-- Auto-generated: stored procedure v6422
-- Created for project optimization

CREATE TABLE IF NOT EXISTS stored_procedure_6422 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    status VARCHAR(50) DEFAULT 'active',
    priority SMALLINT DEFAULT 0,
    is_active BOOLEAN DEFAULT TRUE,
    metadata JSONB,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_6422_name
    ON stored_procedure_6422(name);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_6422_created
    ON stored_procedure_6422(created_at DESC);

-- Seed data
INSERT INTO stored_procedure_6422 (name, status)
VALUES
    ('item_0', 'val_0_6422'),
    ('item_1', 'val_1_6422'),
    ('item_2', 'val_2_6422'),
    ('item_3', 'val_3_6422'),
    ('item_4', 'val_4_6422'),
    ('item_5', 'val_5_6422'),
    ('item_6', 'val_6_6422'),
    ('item_7', 'val_7_6422'),

-- View
CREATE OR REPLACE VIEW v_stored_procedure_6422_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM stored_procedure_6422
GROUP BY name
ORDER BY total DESC;
