CREATE USER tractionuser PASSWORD 'tractionPass';
CREATE USER holderuser PASSWORD 'holderPass';
CREATE USER verifieruser PASSWORD 'verifierPass';
CREATE USER issueruser PASSWORD 'issuerPass';
CREATE DATABASE traction;
\connect traction
CREATE SCHEMA IF NOT EXISTS holder AUTHORIZATION holderuser;
CREATE SCHEMA IF NOT EXISTS verifier AUTHORIZATION verifieruser;
CREATE SCHEMA IF NOT EXISTS issuer AUTHORIZATION issueruser;
CREATE SCHEMA IF NOT EXISTS traction AUTHORIZATION tractionuser;
GRANT USAGE ON SCHEMA holder TO tractionuser;
GRANT USAGE ON SCHEMA verifier TO tractionuser;
GRANT USAGE ON SCHEMA issuer TO tractionuser;
ALTER DEFAULT PRIVILEGES FOR USER holderuser IN SCHEMA holder GRANT SELECT ON TABLES TO tractionuser;
ALTER DEFAULT PRIVILEGES FOR USER verifieruser IN SCHEMA verifier GRANT SELECT ON TABLES TO tractionuser;
ALTER DEFAULT PRIVILEGES FOR USER issueruser IN SCHEMA issuer GRANT SELECT ON TABLES TO tractionuser;
