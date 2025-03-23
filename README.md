# Redis_project  

커머스의 핵심 프로세스인 상품 조회 및 주문 과정에서 발생할 수 있는 동시성 이슈 해결 및 성능 개선을 경험하고, 안정성을 높이기 위한 방법을 배웁니다.

## Multi Module Design
### presentation
- 컨트롤러
- DTO
### app
- 서비스
### domain
- 도메인
- 비즈니스 규칙
### infra
- 실제 DB 구현체

## 기술 스택
- Docker Compose
- Spring Boot 3.x
- Java (JVM 21)
- JPA
- Gradle
- MySQL
- IntelliJ Http Request

## Table Design
![erd_movie](https://github.com/user-attachments/assets/6b72e0ea-bfb0-4d0c-8e45-ae443885d1fa)

## Architecture
```
 ├── movie-presentation /        → presentation 계층 (Controller + DTO)
 │   ├── controller
 │   │   └── MovieController
 │   └── dto
 │       ├── MovieRequestDto
 │       └── MovieResponseDto
 │
 ├── movie-app/                  → Application 계층 (Usercase)
 │   └── service
 │       ├── BookingService
 │       ├── MovieService
 │       ├── ScheduleService
 │       └── MemberService
 │ 
 ├── movie-domain/               → domain 계층 (Entity)
 │   ├── entity
 │   │   ├── Booking
 │   │   ├── Member
 │   │   ├── Movie
 │   │   ├── Schedule
 │   │   ├── Seat
 │   │   └── Theater
 │   ├── enums
 │   │   ├── BookingStatus
 │   │   ├── MovieGenre
 │   │   └── MovieGrade
 │   └── exception
 │ 
 └── movie-infra/                    → Infrastructure 계층 (실제 DB 연동)
     ├── MemberRepository
     ├── BookingRepository
     ├── MovieRepository
     ├── ScheduleRepository
     ├── SeatRepository
     └── TheaterRepository
```