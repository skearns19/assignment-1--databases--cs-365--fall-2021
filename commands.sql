-- Create a new entry into the database, which already has the 10 initial entries.
INSERT INTO user
VALUES (
        1,
        2,
        "eagle-playground",
        "Jim",
        "Bob",
        "junkeamil@gmail.com",
        AES_ENCRYPT("1234", "secretpass"),
        "GitHub sandbox account."
    );

-- Get the password associated with the URL of one of the 10 entries.
SELECT CAST(
        AES_DECRYPT(password, @key_str, @init_vector) AS CHAR
    )
FROM user
WHERE website_id IN (
        SELECT website_id
        FROM website
        WHERE website_url = "https://www.hackthebox.eu/"
    );

-- Get all the password-related data, including the password, associated with URLs that have https.
SELECT password,
    CAST(
        AES_DECRYPT(password, @key_str, @init_vector) AS CHAR
    )
FROM user
WHERE website_id IN (
        SELECT website_id
        FROM website
        WHERE website_url REGEXP 'https://+'
    );

-- Change the URL associated with one of the passwords in the 10 entries.
UPDATE website
SET website_url = 'https://learngitbranching.js.org/'
WHERE website_id IN (
        SELECT website_ID
        FROM user
        WHERE CAST(
                AES_DECRYPT(password, @key_str, @init_vector) AS CHAR
            ) = '1234'
    );

-- Change any password.
UPDATE user SET password = AES_ENCRYPT("pass123", @key_str, @init_vector) WHERE website_id = 4;

-- Remove a URL.
UPDATE website SET website_url = NULL WHERE website_id = 5;

-- Remove a password.
UPDATE user SET password = NULL WHERE website_id = 2;