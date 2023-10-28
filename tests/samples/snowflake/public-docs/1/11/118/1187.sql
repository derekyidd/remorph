SELECT v, base64_encoded_varchar, 
    -- Convert binary -> base64-encoded-string
    TO_VARCHAR(b, 'BASE64'),
    -- Convert binary back to original value
    TO_VARCHAR(b, 'UTF-8')
  FROM base64;