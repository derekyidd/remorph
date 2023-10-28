CREATE OR REPLACE MASKING POLICY mask_string AS
(val string) RETURNS string ->
CASE
  WHEN INVOKER_ROLE() IN ('ANALYST') THEN val
  ELSE '********'
END;