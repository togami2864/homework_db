CREATE DATABASE homeworkdb;

CREATE TABLE tracks (
	track_id  PRIMARY KEY,
	track_name text UNIQUE NOT NULL
);

CREATE TABLE lives (
	event_name text PRIMARY KEY,
	track_id text NOT NULL,
	location_id text NOT NULL,
	FOREIGN KEY (track_id) REFERENCES tracks (track_id),
	FOREIGN KEY (location_id) REFERENCES locations (location_id)
);

CREATE TABLE locations (
	location_id text PRIMARY KEY,
	location_name text UNIQUE NOT NULL,
	prefecture_name text NOT NULL
);


INSERT INTO tracks (track_id, track_name)
		values('tk1', 'Take me Out'), ('tk2', 'Twilight'), ('tk3', 'Jump Around'), ('tk4', 'Shake Your Body')

INSERT INTO lives (event_name, track_id, location_id)
		values('live@Tokyo', 'tk1', 'loc1'), ('live@Tokyo', 'tk2', 'loc1'), ('live@Tokyo', 'tk3', 'loc1'), ('live@Osaka', 'tk2', 'loc2'), ('live@Osaka', 'tk4', 'loc2'), ('live@Yokohama', 'tk3', 'loc3'), ('live@Yokohama', 'tk1', 'loc3'), ('live@Nanba', 'tk3', 'loc5'), ('live@Nanba', 'tk1', 'loc5')

INSERT INTO locations (location_id, location_name, prefecture_name)
		values('loc1', 'Zepp Haneda', 'tokyo'), ('loc2', 'Zepp Osaka', 'osaka'),('loc3', 'Zepp Yokohama', 'kanagawa'),('loc4', 'Tokyo Liva House', 'tokyo'),('loc5', 'Zepp Nanba', 'osaka')