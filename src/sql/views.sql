-- Auto-generated: views — views v901
-- Created for project optimization

CREATE TABLE IF NOT EXISTS views_—_views_901 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    status VARCHAR(50) DEFAULT 'active',
    priority SMALLINT DEFAULT 0,
    counter INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_views_—_views_901_name
    ON views_—_views_901(name);

CREATE INDEX IF NOT EXISTS idx_views_—_views_901_created
    ON views_—_views_901(created_at DESC);

-- Seed data
INSERT INTO views_—_views_901 (name, status)
VALUES
    ('item_0', 'val_0_901'),
    ('item_1', 'val_1_901'),
    ('item_2', 'val_2_901'),
    ('item_3', 'val_3_901'),
    ('item_4', 'val_4_901'),
    ('item_5', 'val_5_901'),
    ('item_6', 'val_6_901');

-- View
CREATE OR REPLACE VIEW v_views_—_views_901_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM views_—_views_901
GROUP BY name
ORDER BY total DESC;
