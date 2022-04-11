// Update with your config settings.
const POSTGRES_PASSWORD =process.env.POSTGRES_PASSWORD
const US = process.env.US 
const PR = 5432
const POSTGRES_DB = "testing"
console.log ('VARIBLES ', `postgres://${US}:${POSTGRES_PASSWORD}@postgres:${PR}/testing` )
//${process.env.POSTGRES_PASSWORD}
module.exports = {
    development: {
      client: 'pg',
      connection:`postgres://${US}:${POSTGRES_PASSWORD}@postgres:${PR}/${POSTGRES_DB}`,
      migrations: {
        directory: './db/migrations'
      },
      seeds: {
        directory: './db/seeds/dev'
      },
      useNullAsDefault: true
    },
  
    test: {
      client: 'pg',
      connection:`postgres://${US}:${POSTGRES_PASSWORD}@postgres:${PR}/${POSTGRES_DB}`,
      migrations: {
        directory: './db/migrations'
      },
      seeds: {
        directory: './db/seeds/test'
      },
      useNullAsDefault: true
    },
  
    production: {
      client: 'pg',
      connection:`postgres://${US}:${POSTGRES_PASSWORD}@postgres:${PR}/${POSTGRES_DB}`,
      migrations: {
        directory: './db/migrations'
      },
      seeds: {
        directory: './db/seeds/production'
      },
      useNullAsDefault: true
    }
  }
  
