-- Auto-generated: migration script v335
-- Created for project optimization

CREATE TABLE IF NOT EXISTS migration_script_335 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    metadata JSONB,
    score DECIMAL(10,2),
    priority SMALLINT DEFAULT 0,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_migration_script_335_name
    ON migration_script_335(name);

CREATE INDEX IF NOT EXISTS idx_migration_script_335_created
    ON migration_script_335(created_at DESC);

-- Seed data
INSERT INTO migration_script_335 (name, description)
VALUES
    ('item_0', 'val_0_335'),
    ('item_1', 'val_1_335'),
    ('item_2', 'val_2_335'),
    ('item_3', 'val_3_335'),
    ('item_4', 'val_4_335'),
    ('item_5', 'val_5_335'),
    ('item_6', 'val_6_335'),
    ('item_7', 'val_7_335');

-- View
CREATE OR REPLACE VIEW v_migration_script_335_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM migration_script_335
GROUP BY name
ORDER BY total DESC;
