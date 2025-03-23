-- ✅ member (2명)
INSERT INTO member (password, name, created_by, created_at, updated_by, updated_at)
VALUES
    ('pw1234', 'Bailey', 'system', NOW(), 'system', NOW()),
    ('pw5678', 'Alice', 'system', NOW(), 'system', NOW());

-- ✅ movie (3개: 인터스텔라, 타이타닉, 괴물)
INSERT INTO movie (title, grade, genre, running_time, thumbnail, release_date, created_by, created_at, updated_by, updated_at)
VALUES
    ('Interstellar', 'AGE_12', 'SF', 169, 'https://example.com/interstellar.jpg', '2014-11-06 00:00:00', 'system', NOW(), 'system', NOW()),
    ('Titanic', 'AGE_12', 'ROMANCE', 195, 'https://example.com/titanic.jpg', '1997-12-19 00:00:00', 'system', NOW(), 'system', NOW()),
    ('The Host', 'AGE_15', 'HORROR', 119, 'https://example.com/thehost.jpg', '2006-07-27 00:00:00', 'system', NOW(), 'system', NOW());

-- ✅ theater (2개)
INSERT INTO theater (name, created_by, created_at, updated_by, updated_at)
VALUES
    ('CGV', 'system', NOW(), 'system', NOW()),
    ('MEGABOX', 'system', NOW(), 'system', NOW());

-- ✅ seat (각 상영관에 A1~E5, 총 25개씩 → 2관 x 25 = 50개)
-- CGV 강남 (theater_id = 1)
INSERT INTO seat (theater_id, seat_row, seat_column, seat_number, created_by, created_at, updated_by, updated_at)
VALUES
-- A1~A5
('1','A',1,'A1','system',NOW(),'system',NOW()),
('1','A',2,'A2','system',NOW(),'system',NOW()),
('1','A',3,'A3','system',NOW(),'system',NOW()),
('1','A',4,'A4','system',NOW(),'system',NOW()),
('1','A',5,'A5','system',NOW(),'system',NOW()),
-- B1~B5
('1','B',1,'B1','system',NOW(),'system',NOW()),
('1','B',2,'B2','system',NOW(),'system',NOW()),
('1','B',3,'B3','system',NOW(),'system',NOW()),
('1','B',4,'B4','system',NOW(),'system',NOW()),
('1','B',5,'B5','system',NOW(),'system',NOW()),
-- C1~C5
('1','C',1,'C1','system',NOW(),'system',NOW()),
('1','C',2,'C2','system',NOW(),'system',NOW()),
('1','C',3,'C3','system',NOW(),'system',NOW()),
('1','C',4,'C4','system',NOW(),'system',NOW()),
('1','C',5,'C5','system',NOW(),'system',NOW()),
-- D1~D5
('1','D',1,'D1','system',NOW(),'system',NOW()),
('1','D',2,'D2','system',NOW(),'system',NOW()),
('1','D',3,'D3','system',NOW(),'system',NOW()),
('1','D',4,'D4','system',NOW(),'system',NOW()),
('1','D',5,'D5','system',NOW(),'system',NOW()),
-- E1~E5
('1','E',1,'E1','system',NOW(),'system',NOW()),
('1','E',2,'E2','system',NOW(),'system',NOW()),
('1','E',3,'E3','system',NOW(),'system',NOW()),
('1','E',4,'E4','system',NOW(),'system',NOW()),
('1','E',5,'E5','system',NOW(),'system',NOW());

-- 롯데시네마 성수 (theater_id = 2)
INSERT INTO seat (theater_id, seat_row, seat_column, seat_number, created_by, created_at, updated_by, updated_at)
VALUES
    ('2','A',1,'A1','system',NOW(),'system',NOW()),
    ('2','A',2,'A2','system',NOW(),'system',NOW()),
    ('2','A',3,'A3','system',NOW(),'system',NOW()),
    ('2','A',4,'A4','system',NOW(),'system',NOW()),
    ('2','A',5,'A5','system',NOW(),'system',NOW()),
    ('2','B',1,'B1','system',NOW(),'system',NOW()),
    ('2','B',2,'B2','system',NOW(),'system',NOW()),
    ('2','B',3,'B3','system',NOW(),'system',NOW()),
    ('2','B',4,'B4','system',NOW(),'system',NOW()),
    ('2','B',5,'B5','system',NOW(),'system',NOW()),
    ('2','C',1,'C1','system',NOW(),'system',NOW()),
    ('2','C',2,'C2','system',NOW(),'system',NOW()),
    ('2','C',3,'C3','system',NOW(),'system',NOW()),
    ('2','C',4,'C4','system',NOW(),'system',NOW()),
    ('2','C',5,'C5','system',NOW(),'system',NOW()),
    ('2','D',1,'D1','system',NOW(),'system',NOW()),
    ('2','D',2,'D2','system',NOW(),'system',NOW()),
    ('2','D',3,'D3','system',NOW(),'system',NOW()),
    ('2','D',4,'D4','system',NOW(),'system',NOW()),
    ('2','D',5,'D5','system',NOW(),'system',NOW()),
    ('2','E',1,'E1','system',NOW(),'system',NOW()),
    ('2','E',2,'E2','system',NOW(),'system',NOW()),
    ('2','E',3,'E3','system',NOW(),'system',NOW()),
    ('2','E',4,'E4','system',NOW(),'system',NOW()),
    ('2','E',5,'E5','system',NOW(),'system',NOW());

-- ✅ schedule (각 영화관에서 2개씩 상영 시간 설정)
INSERT INTO schedule (movie_id, theater_id, start_time, end_time, created_by, created_at, updated_by, updated_at)
VALUES
-- 강남관 (id: 1)
(1, 1, '2025-03-24 10:00:00', '2025-03-24 12:49:00', 'system', NOW(), 'system', NOW()), -- 인터스텔라
(2, 1, '2025-03-24 13:00:00', '2025-03-24 16:15:00', 'system', NOW(), 'system', NOW()), -- 타이타닉
-- 성수관 (id: 2)
(3, 2, '2025-03-24 15:00:00', '2025-03-24 17:00:00', 'system', NOW(), 'system', NOW()), -- 괴물
(1, 2, '2025-03-24 18:00:00', '2025-03-24 20:49:00', 'system', NOW(), 'system', NOW()); -- 인터스텔라

-- ✅ booking (Bailey가 강남관에서 인터스텔라 예매)
INSERT INTO booking (schedule_id, member_id, seat_id, booking_status, booking_date, created_by, created_at, updated_by, updated_at)
VALUES (1, 1, 1, 'RESERVED', NOW(), 'bailey', NOW(), 'bailey', NOW());
