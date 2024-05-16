[프로젝트 주제]  
영화 정보 및 리뷰 플랫폼 개발

---
[프로젝트 목표]  
최신 영화 정보 조회, 평점과 리뷰를 공유하는 커뮤니티 기능을 구현

---
[프로젝트 요구사항 분석 및 기능 정의]  
요구사항 분석: 
1. 영화 정보, 리뷰 조회: 모든 사용자에게 제공 
2. 커뮤니티 기능: 로그인 한 사용자에게 제공 
3. 영화 상영 정보 편집: 관리자에게만 허용 
4. 리뷰 및 평점 수정, 삭제: 작성자 및 관리자에게만 허용 
구현 기능: 
1. 일자별로 업데이트되는 최신 영화 인기 순위 
2. 개봉일, 주연배우, 시놉시스 등 영화 정보를 제공하는 페이지 
3. 회원가입 및 로그인 시스템 
4. 별점 평가, 공백 포함 30자 이내의 ‘한줄 리뷰’ 작성 기능

---
[팀원 구성, 역할 분담]  
이**(프론트엔드): 웹 화면 설계, CSS
허선행(백엔드): REST API 설계, DB 설계

---
[프로젝트 수행시 발생한 문제점, 해결 방법, 느낀 점]  
문제: 회원 탈퇴 구현시 게시물 외래 키 참조 문제 
처음 시도: 회원이 작성한 게시물을 삭제 후 탈퇴 
문제 발견: 데이터 보존 문제, 데이터 관계성 유지 문제 
해결 전략: - 데이터 구조에 대한 이해 강화 - “Soft Delete” 방식 구현 
교훈: 데이터 구조를 이해하고 설계 과정에서 치밀한 설계의 중요성을 인식함
