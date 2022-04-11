exports.seed = function(knex) {
  // Deletes ALL existing entries to prevent duplicates
  return knex('public.test').count("id")
    .then((data) => {      
      if (data[0].count > 0) return
      // Inserts seed entries
      return knex('public.test').insert([
        {   message: "¡Hola, Mundo!"  }          
      ])         
    })
}