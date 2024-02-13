-- cinema 테이블에 더미 데이터 추가
INSERT INTO cinema (cinema_id, cinema_name, cinema_location, cinema_phone)
VALUES 
    (1, '메가박스 강남', '서울특별시 강남구 강남대로 100', '02-1234-5678'),
    (2, 'CGV 명동', '서울특별시 중구 명동길 50', '02-9876-5432'),
    (3, '롯데시네마 홍대', '서울특별시 마포구 와우산로 123', '02-1111-2222');

-- theater 테이블에 더미 데이터 추가
INSERT INTO theater (theater_id, cinema_id, theater_no, theater_type)
VALUES 
    (1, 1, 1, '스크린1'),
    (2, 1, 2, '스크린2'),
    (3, 2, 1, '스크린1'),
    (4, 2, 2, '스크린2'),
    (5, 3, 1, '스크린1'),
    (6, 3, 2, '스크린2');

-- movie 테이블에 더미 데이터 추가
INSERT INTO movie (movie_id, movie_title, release_date, running_time, film_rate, genre, synopsis, director, casts)
VALUES 
    (1, '백두산', '2019-12-19', '128분', '12세 관람가', '액션, 드라마', '남과 북의 군사대결을 그린 영화.', '이헌곤', '이병헌, 하정우, 마동석'),
    (2, '남산의 부장들', '2020-01-22', '114분', '15세 관람가', '드라마', '대한민국의 역사를 소재로 한 영화.', '우민호', '이병헌, 이성민, 고두심'),
    (3, '시동', '2019-12-18', '102분', '12세 관람가', '코미디, 드라마', '남자와 드론 사이의 이야기.', '최정열', '마동석, 박정민, 정해인'),
    (4, '정직한 후보', '2020-02-12', '108분', '12세 관람가', '코미디, 드라마', '정치에 입문한 비전없는 정치인의 이야기.', '장유정', '라미란, 김무열, 나문희'),
    (5, '반도', '2020-07-15', '116분', '15세 관람가', '액션, 드라마', '좀비들이 활개치는 한반도를 배경으로 한 액션 영화.', '연상호', '강동원, 이정현, 이레'),
    (6, '도굴', '2020-11-04', '114분', '15세 관람가', '범죄, 드라마', '전국의 유명 미술품을 목표로 한 도둑들의 이야기.', '박정배', '이제훈, 조우진, 신혜선');

-- screening_schedule 테이블에 더미 데이터 추가
INSERT INTO screening_schedule (screening_id, movie_id, screening_date, start_time, end_time, theater_id)
VALUES 
    (1, 1, '2024-02-15', '10:00:00', '12:00:00', 1),
    (2, 1, '2024-02-15', '14:00:00', '16:00:00', 1),
    (3, 1, '2024-02-15', '11:00:00', '13:00:00', 2),
    (4, 2, '2024-02-15', '12:00:00', '14:00:00', 3),
    (5, 2, '2024-02-15', '16:00:00', '18:00:00', 3),
    (6, 3, '2024-02-15', '13:00:00', '15:00:00', 4);

-- seat 테이블에 더미 데이터 추가
INSERT INTO seat (seat_id, theater_id, seat_row_no, seat_col_no)
VALUES 
    (1, 1, 'A', 1),
    (2, 1, 'A', 2),
    (3, 1, 'B', 1),
    (4, 2, 'A', 1),
    (5, 2, 'A', 2),
    (6, 2, 'B', 1),
    (7, 1, 'B', 2),
    (8, 2, 'B', 2),
    (9, 1, 'C', 1),
    (10, 1, 'C', 2),
    (11, 2, 'C', 1),
    (12, 2, 'C', 2);

-- member 테이블에 더미 데이터 추가
INSERT INTO member (member_id, member_pw, member_birth, member_address, member_phone, join_date)
VALUES 
    ('user1', 'password1', '1990-01-01', '서울특별시 강남구', '010-1234-5678', '2020-01-01'),
    ('user2', 'password2', '1995-05-15', '경기도 수원시', '010-9876-5432', '2020-01-02'),
    ('user3', 'password3', '1988-02-28', '서울특별시 마포구', '010-1111-2222', '2020-01-03'),
    ('user4', 'password4', '1992-11-12', '서울특별시 강서구', '010-3333-4444', '2020-01-04'),
    ('user5', 'password5', '1997-08-12', '인천광역시 중구', '010-5555-6666', '2022-01-05'),
    ('user6', 'password6', '1984-04-25', '대구광역시 동구', '010-7777-8888', '2022-01-06');

-- ticketing 테이블에 더미 데이터 추가
INSERT INTO ticketing (ticket_id, member_id, adult, teenager, child, screening_id)
VALUES 
    (1, 'user1', 2, 0, 1, 1),
    (2, 'user2', 1, 1, 0, 2),
    (3, 'user3', 2, 0, 0, 3),
    (4, 'user4', 0, 2, 0, 4),
    (5, 'user5', 1, 0, 1, 5),
    (6, 'user6', 2, 0, 0, 6);

-- payment 테이블에 더미 데이터 추가
INSERT INTO payment (payment_id, ticket_id, payment_date, payment_method, amount)
VALUES 
    (1, 1, '2020-01-12', '신용 카드', 15000),
    (2, 2, '2020-01-13', '신용 카드', 20000),
    (3, 3, '2020-01-14', '신용 카드', 10000),
    (4, 4, '2020-01-15', '신용 카드', 15000),
    (5, 5, '2022-01-15', '신용 카드', 20000),
    (6, 6, '2022-01-15', '신용 카드', 15000);

-- review 테이블에 더미 데이터 추가
INSERT INTO review (member_id, movie_id, review_date, grade, review_contents)
VALUES 
    ('user1', 1, '2020-01-05', 8.7, '스릴 넘치는 액션 장면이 인상적이었습니다.'),
    ('user2', 2, '2020-01-06', 9.2, '감동적인 연기와 몰입도가 뛰어난 영화입니다.'),
    ('user3', 3, '2020-01-07', 7.9, '유쾌한 분위기와 재미있는 스토리가 좋았습니다.'),
    ('user4', 4, '2020-01-08', 8.5, '재치 있는 대사와 뛰어난 연기력이 돋보였습니다.'),
    ('user5', 5, '2022-01-10', 8.8, '긴장감 넘치는 액션과 스릴이 좋았습니다.'),
    ('user6', 6, '2022-01-11', 9.1, '스토리 전개가 흥미로웠고 연기력이 좋았습니다.');
