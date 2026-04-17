-- Auto-generated: stored procedure v3459
-- Created for project optimization

CREATE TABLE IF NOT EXISTS stored_procedure_3459 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    is_active BOOLEAN DEFAULT TRUE,
    priority SMALLINT DEFAULT 0,
    metadata JSONB,
    counter INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_3459_name
    ON stored_procedure_3459(name);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_3459_created
    ON stored_procedure_3459(created_at DESC);

-- Seed data
INSERT INTO stored_procedure_3459 (name, description)
VALUES
    ('item_0', 'val_0_3459'),
    ('item_1', 'val_1_3459'),
    ('item_2', 'val_2_3459'),
    ('item_3', 'val_3_3459'),
    ('item_4', 'val_4_3459'),
    ('item_5', 'val_5_3459');

-- View
CREATE OR REPLACE VIEW v_stored_procedure_3459_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM stored_procedure_3459
GROUP BY name
ORDER BY total DESC;
