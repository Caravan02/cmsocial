BEGIN;
    ALTER TABLE social_contests ADD COLUMN mail_server VARCHAR;
    ALTER TABLE social_contests ADD COLUMN mail_username VARCHAR;
    ALTER TABLE social_contests ADD COLUMN mail_password VARCHAR;
    ALTER TABLE social_contests ADD COLUMN mail_from VARCHAR;
    ALTER TABLE social_contests ADD COLUMN recaptcha_public_key VARCHAR;
    ALTER TABLE social_contests ADD COLUMN recaptcha_secret_key VARCHAR;
    ALTER TABLE social_contests ADD COLUMN analytics VARCHAR;
    ALTER TABLE social_users ADD COLUMN recover_code VARCHAR;
    ALTER TABLE social_users ADD COLUMN last_recover TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT '1970-1-1';
ROLLBACK;
