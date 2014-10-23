require 'sqlite3'

def number_of_rows(db, table_name)
  # TODO: count number of rows in table table_name
  db.execute("SELECT COUNT(*) FROM #{table_name}").first.first
end

def sorted_artists(db)
  # TODO: return array of artists' names sorted alphabetically
  db.execute("SELECT name FROM artists ORDER BY name").flatten
end

def love_tracks(db)
  # TODO: return array of love songs
  db.execute("SELECT name FROM tracks WHERE name LIKE '%love%'").flatten
end

def long_tracks(db, min_length)
  # TODO: return tracks verifying: duration > min_length (minutes)
  min = min_length * 60_000
  db.execute("SELECT name FROM tracks WHERE milliseconds > #{min}").flatten
end