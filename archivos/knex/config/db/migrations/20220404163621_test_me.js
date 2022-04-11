exports.up = function(knex) {
   return knex.schema.withSchema('public').createTable('test', table => {
        table.increments('id').primary()
        table.text('message')        
        table.timestamp('fecha_creacion', options={useTz: false, precision: 0}).defaultTo(knex.fn.now());
        table.timestamp('fecha_modificacion', options={useTz: false, precision: 0}).defaultTo(knex.fn.now());        
      })    
};

exports.down = function(knex) {
 return knex.raw("DROP TABLE public.test")
};
