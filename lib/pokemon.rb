class Pokemon
  attr_reader :id 
  attr_accessor :name, :type, :db
  
  def initialize(hash)
    @name = hash[:name]
    @type = hash[:type]
    @id = hash[:id]
    @db = hash[:db]
  end
  
<<<<<<< HEAD
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end
  
  def self.find(id, db) 
    sql = <<-SQL
      SELECT * 
      FROM pokemon
      WHERE id = ?
    SQL
    
    row = db.execute(sql, id).first
    
    pok_hash = {
      :name => row[1],
      :type => row[2],
      :id => row[0],
      :db => db
    }
    
    pok = self.new(pok_hash)
    
    pok
=======
  def save
    
  end
  
  def find 
    
>>>>>>> 1ba10744fac36c1abf357d786a907841b692b6f3
  end
end
