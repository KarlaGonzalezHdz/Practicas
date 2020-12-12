Use Biblioteca

select * from libro

Select titulo from libro
where IdLibro in (SELECT IdLibro
from LibAut where IdAutor = 2)
