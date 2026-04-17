-- Auto-generated: procedures — procedures v7481
-- Created for project optimization

CREATE TABLE IF NOT EXISTS procedures_—_procedures_7481 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    metadata JSONB,
    is_active BOOLEAN DEFAULT TRUE,
    score DECIMAL(10,2),
    description TEXT,
    priority SMALLINT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_7481_name
    ON procedures_—_procedures_7481(name);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_7481_created
    ON procedures_—_procedures_7481(created_at DESC);

-- Seed data
INSERT INTO procedures_—_procedures_7481 (name, metadata)
VALUES
    ('item_0', 'val_0_7481'),
    ('item_1', 'val_1_7481'),
    ('item_2', 'val_2_7481'),
    ('item_3', 'val_3_7481'),
    ('item_4', 'val_4_7481'),
    ('item_5', 'val_5_7481'),
    ('item_6', 'val_6_7481'),
    ('item_7', 'val_7_7481'),

-- View
CREATE OR REPLACE VIEW v_procedures_—_procedures_7481_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM procedures_—_procedures_7481
GROUP BY name
ORDER BY total DESC;
