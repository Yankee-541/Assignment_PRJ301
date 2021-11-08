select a.user_id, a.username, a.password,a.displayname, a.phone, a.email,a.avatar,p.pid, p.url from account a
left join GroupAccount ga on ga.user_name = a.username
left join [Group] g on g.gid = ga.gid
left join GroupPermission gp on gp.gid = g.gid
left join permission p on p.pid = gp.pid
where a.username = ? and a.password = ?


select a.user_id, a.username, a.password,a.displayname, a.phone, a.email,a.avatar, ga.gid,g.gname
from account a left join GroupAccount ga 
on a.username = ga.user_name
left join [Group] g on g.gid = ga.gid

select * from account