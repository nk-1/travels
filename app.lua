log = require('log')
console = require('console')
db = require('db')

box.cfg {
    memtx_memory = (3 * 1024) * 1024 * 1024;
    memtx_dir = '/var/lib/tarantool/';
    wal_dir = '/var/lib/tarantool/';
    wal_mode = 'none';
}

console.listen('/tarantool-admin/admin.sock')

box.once('init_schema', db.init_schema)
db.load_data()

-- run http server
require('server')