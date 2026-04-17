-- Auto-generated: complex query v3798
-- Created for project optimization

CREATE TABLE IF NOT EXISTS complex_query_3798 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    score DECIMAL(10,2),
    is_active BOOLEAN DEFAULT TRUE,
    priority SMALLINT DEFAULT 0,
    email VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_complex_query_3798_name
    ON complex_query_3798(name);

CREATE INDEX IF NOT EXISTS idx_complex_query_3798_created
    ON complex_query_3798(created_at DESC);

-- Seed data
INSERT INTO complex_query_3798 (name, score)
VALUES
    ('item_0', 'val_0_3798'),
    ('item_1', 'val_1_3798'),
    ('item_2', 'val_2_3798'),
    ('item_3', 'val_3_3798'),
    ('item_4', 'val_4_3798'),
    ('item_5', 'val_5_3798'),
    ('item_6', 'val_6_3798'),
    ('item_7', 'val_7_3798'),

-- View
CREATE OR REPLACE VIEW v_complex_query_3798_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM complex_query_3798
GROUP BY name
ORDER BY total DESC;
