import pkg from 'pg';
import "dotenv/config"

const { Pool } = pkg;

const {DB_USER,DB_SERVER,DB_PW} = process.env;

export const pool = new Pool({
    user: DB_USER,
    host: DB_SERVER,
    database: DB_USER,
    password: DB_PW,
});