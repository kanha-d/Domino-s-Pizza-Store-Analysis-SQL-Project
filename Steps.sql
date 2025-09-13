-- 1. Types of Data Usually Found in CSV Files
-- CSV (Comma-Separated Values) files are simple text-based data storage, often containing:

-- a) Structured Data

		Numeric Data (Quantitative)
		Integers (e.g., age = 25, quantity = 10)
		Floats/Decimals (e.g., salary = 45235.50, rating = 4.7)
		Categorical Data (Qualitative)
		Nominal (no order, e.g., gender = Male/Female, country = India/USA)
		Ordinal (has order, e.g., education = High School < Bachelor < Master < PhD)
		Text Data
		Names, comments, reviews, addresses.
		Date/Time Data
		Timestamps (2025-09-13 14:32:00)
		Dates only (2025-09-13)
		Time only (14:32:00)
		Boolean Data
		Yes/No, True/False, 0/1.

-- b) Unstructured or Semi-Structured Data

		Free-text columns (customer reviews, notes).
		JSON-like strings inside CSV (sometimes APIs dump JSON into one column).
		Mixed data (numbers + text, e.g., "10 kg", "15 USD").




-- Types of Data Issues a Data Analyst Will Encounter

	Missing values (NULL, NaN, blank cells).
	Duplicates (same row appearing multiple times).
	Inconsistent formats (date written as 13/09/2025 vs 2025-09-13).
	Outliers (salary = 9999999 or negative age).
	Typos / inconsistent categories (Male, M, male).
	Encoding issues (special characters, Ã© instead of é).
	Wrong datatype (numeric column stored as text, e.g., "123").
	Mixed delimiters (commas, semicolons, tabs).
	Extra spaces or invisible characters.


-- 3. Data Cleaning Steps Before Analysis
-- A data analyst usually does the following cleaning:

 -- Remove duplicates

	Drop identical rows.

-- Handle missing values

	Drop rows/columns (if too many missing).
	Fill with mean/median/mode or domain-specific default.

-- Fix data types

	Convert strings to datetime.
	Convert numbers stored as text to numeric.
	Ensure boolean values are True/False or 0/1.

-- Standardize formats

	Date format: YYYY-MM-DD.
	Currency, weight, units converted to a common standard.

-- Clean categorical values

	Fix typos (Fmale → Female).
	Merge similar categories (USA, U.S.A., United States → USA).

-- Handle outliers

	Detect extreme values using statistics (IQR, Z-score).
	Decide whether to remove, cap, or keep based on context.
	
-- Trim and clean text

	Remove leading/trailing spaces.
	Lowercase standardization if needed.
	Remove special characters if irrelevant.

-- Feature engineering (optional)
	
	Extract day/month/year from date.
	Create bins (e.g., age group: 0–18, 19–30, 31–50).
	Combine columns (full name from first + last name).
