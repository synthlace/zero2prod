-- Add migration script here
INSERT INTO users (user_id, username, password_hash)
VALUES (
        '9e6e8212-ed94-4d9b-9ab4-453e0341d17f',
        'admin',
        '$argon2id$v=19$m=15000,t=2,p=1$aXFhbnl4dFNYYTRJRnlGag$d/0G4RXLNj+AGpklVJfp+2CcCysnCkirH0K5RHyIdiM'
    );