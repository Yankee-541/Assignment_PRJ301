select ROW_NUMBER() over (ORDER BY [book_id] desc) 
as rownum, [book_id], book_name, [imagin] From Book

Declare @pageSize int = 10
Declare @pageIndex int = 3;

select [book_id],book_name,[imagin] from(
select ROW_NUMBER() over (ORDER BY [book_id] desc) 
as rownum, [book_id], book_name, [imagin] From Book) b
 where rownum >= (@pageIndex -1)* @pageSize +1 and rownum <= @pageIndex * @pageSize

 select * from book

 Select COUNT(*) as total from Book
