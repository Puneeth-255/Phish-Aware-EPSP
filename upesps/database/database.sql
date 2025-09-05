CREATE TABLE IF NOT EXISTS campaigns (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  subject TEXT NOT NULL,
  template TEXT NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS targets (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  campaign_id INTEGER,
  email TEXT NOT NULL,
  unique_id TEXT UNIQUE,
  clicked BOOLEAN DEFAULT 0,
  submitted BOOLEAN DEFAULT 0,
  timestamp_click DATETIME,
  timestamp_submit DATETIME,
  input_data TEXT,
  FOREIGN KEY (campaign_id) REFERENCES campaigns(id)
);
