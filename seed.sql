DROP TABLE IF EXISTS article;

CREATE TABLE article (

  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  body TEXT,
  image TEXT

);

insert into article (title, body, image) values ('NASA Mourns the Passing of Astronaut John Young', 'Astronaut John Young, who walked on the Moon during Apollo 16 and commanded the first space shuttle mission, died Friday, Jan. 5, 2018, at the age of 87 from complications of pneumonia. Young began his impressive career at NASA in 1962, when he was selected from among hundreds of young pilots to join NASAs second astronaut class, known as the "New Nine."', 'https://www.nasa.gov/sites/default/files/602735main_johnyoung_large_full.jpg');

insert into article (title, body, image) values ('Spend Next New Year’s Eve with New Horizons', 'In just under a year – shortly after midnight Eastern Time on Jan. 1, 2019 – NASA’s New Horizons spacecraft will buzz by the most primitive and most distant object ever explored. New Horizons’ encounter with Kuiper Belt object 2014 MU69, which orbits a billion miles beyond Pluto, will offer the first close-up look at such a pristine building block of the solar system – and will be performed in a region of deep space that was practically unknown just a generation ago.', 'https://www.nasa.gov/sites/default/files/thumbnails/image/nh-atmu69_binary_sm.jpg');

insert into article (title, body, image) values ('Two Heads Are Better than One: ICON & GOLD Teaming Up To Explore Earth’s Interface to Space', 'Like Earth, space has weather. Except instead of swirling winds and downpours of precipitation, space weather is defined by shifting electric and magnetic fields and rains of charged particles. At the very beginning of space, starting just 60 miles above Earth’s surface, there’s a layer of the atmosphere that shifts and changes in concert with both types of weather.

Above the ozone layer, the ionosphere is a part of Earth’s atmosphere where particles have been cooked into a sea of electrically-charged electrons and ions by the Sun’s radiation. The ionosphere is comingled with the very highest — and quite thin — layers of Earth’s neutral upper atmosphere, making this region an area that is constantly in flux undergoing the push-and-pull between Earth’s conditions and those in space. Increasingly, these layers of near-Earth space are part of the human domain, as it’s home not only to astronauts, but to radio signals used to guide airplanes and ships, and satellites that provide our communications and GPS systems. Understanding the fundamental processes that govern our upper atmosphere and ionosphere is crucial to improve situational awareness that helps protect astronauts, spacecraft and humans on the ground.', 'https://www.nasa.gov/sites/default/files/thumbnails/image/iconairglownight.png');
