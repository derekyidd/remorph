CREATE TABLE base64 (v VARCHAR, base64_encoded_varchar VARCHAR, b BINARY);
INSERT INTO base64 (v, base64_encoded_varchar, b)
   SELECT 'HELP', BASE64_ENCODE('HELP'),
      TRY_BASE64_DECODE_BINARY(BASE64_ENCODE('HELP'));