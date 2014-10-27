SELECT a.name, COUNT(t.id) as c
    FROM tracks t
    JOIN artists a ON (a.id = al.artist_id)
    JOIN albums al ON (al.id = t.album_id)
    JOIN genres g ON (t.genre_id = g.id)
    WHERE g.name = 'Rock'
    GROUP BY a.name
    ORDER BY c DESC
    LIMIT 5;