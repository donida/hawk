-- add user 'admin' pass 'admin123'
insert into users (id, enabled, password, username) values (nextval('useridseq'), true, 'f865b53623b121fd34ee5426c792e5c33af8c227', 'admin');
-- add authorities to admin
insert into authorities (id, authority, username) values (nextval('authorityidseq'), 'ROLE_ADMIN', 'admin'); 
insert into authorities (id, authority, username) values (nextval('authorityidseq'), 'ROLE_USER', 'admin'); 
-- add user 'user' pass 'user1234'
insert into users (id, enabled, password, username) values (nextval('useridseq'), true, 'd7316a3074d562269cf4302e4eed46369b523687', 'user');
-- add authorities to user
insert into authorities (id, authority, username) values (nextval('authorityidseq'), 'ROLE_USER', 'user'); 
