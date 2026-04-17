-- Auto-generated: schema — database schema definition v4662
-- Created for project optimization

CREATE TABLE IF NOT EXISTS schema_—_database_schema_definition_4662 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    status VARCHAR(50) DEFAULT 'active',
    metadata JSONB,
    priority SMALLINT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_4662_name
    ON schema_—_database_schema_definition_4662(name);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_4662_created
    ON schema_—_database_schema_definition_4662(created_at DESC);

-- Seed data
INSERT INTO schema_—_database_schema_definition_4662 (name, status)
VALUES
    ('item_0', 'val_0_4662'),
    ('item_1', 'val_1_4662'),
    ('item_2', 'val_2_4662'),
    ('item_3', 'val_3_4662'),
    ('item_4', 'val_4_4662'),
    ('item_5', 'val_5_4662'),
    ('item_6', 'val_6_4662');

-- View
CREATE OR REPLACE VIEW v_schema_—_database_schema_definition_4662_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM schema_—_database_schema_definition_4662
GROUP BY name
ORDER BY total DESC;
