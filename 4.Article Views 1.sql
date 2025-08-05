SELECT DISTINCT author_id as id
from views as v
where author_id = viewer_id
ORDER by id 
