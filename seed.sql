DROP TABLE IF EXISTS article;

CREATE TABLE article (

  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  body TEXT,
  image TEXT

);

insert into article (title, body, image) values ('article_test', 'body test articlebody test articlebody test articlebody test article', 'https://static.pexels.com/photos/110854/pexels-photo-110854.jpeg');
