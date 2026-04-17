-- Auto-generated: migration script v1612
-- Created for project optimization

CREATE TABLE IF NOT EXISTS migration_script_1612 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    counter INTEGER DEFAULT 0,
    score DECIMAL(10,2),
    email VARCHAR(255),
    status VARCHAR(50) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_migration_script_1612_name
    ON migration_script_1612(name);

CREATE INDEX IF NOT EXISTS idx_migration_script_1612_created
    ON migration_script_1612(created_at DESC);

-- Seed data
INSERT INTO migration_script_1612 (name, is_active)
VALUES
    ('item_0', 'val_0_1612'),
    ('item_1', 'val_1_1612'),
    ('item_2', 'val_2_1612'),
    ('item_3', 'val_3_1612'),
    ('item_4', 'val_4_1612'),
    ('item_5', 'val_5_1612'),
    ('item_6', 'val_6_1612'),
    ('item_7', 'val_7_1612');

-- View
CREATE OR REPLACE VIEW v_migration_script_1612_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM migration_script_1612
GROUP BY name
ORDER BY total DESC;
