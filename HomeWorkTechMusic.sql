--Создать таблицу комментариев (comments) с использованием механизма валидации данных в SQL
create table comments(
	id int primary key auto_increment,
    created_at timestamp default current_timestamp,
    author_id int not null,
    track_id int not null,
	body text not null,
    foreign key (author_id) references users(id),
    foreign key (track_id) references tracks(id)
)
--Добавить в таблицу комментариев несколько записей
insert into comments(author_id,track_id,body)
values
	(1,2,"Absolutely blown away by this track! From the infectious beat to the mesmerizing lyrics, it's an absolute masterpiece. I can't get enough of it! 5/5 stars!"),
(3,1,"At first, I wasn't sure about this track, but it's really grown on me. The more I listen, the more I appreciate its unique sound. It's definitely worth giving it a chance. 3/5 stars."),
(4,2,"This track exceeded my expectations! It's catchy, it's fun, and it's got that special something that keeps you coming back for more. Can't get enough of it! 4/5 stars."),
(2,3,"This track is pure fire! It's been on repeat since I first heard it. The artist's talent shines through every note. Definitely a must-listen! 5/5 stars!"),
(1,3,"Disappointed with this track. The production feels amateurish, and the vocals lack emotion. It's just another forgettable tune in a sea of mediocrity. 2/5 stars.")
--Вывести ко-во комментариев на каждый трек (в упорядоченном виде)
--Добавил названия трэка чтобы смотрелось лучше
select 
tracks.title,
count(comments.id) AS count_comments
from comments
join tracks on tracks.id = comments.track_id
group by comments.track_id