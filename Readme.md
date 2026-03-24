
## 명령어
---
- Database 만들기
```
create database madangdb;
```
- 사용자 생성
```
create user madang@localhost identified by '1234';
```
- 권한 설정
```
grant all privileges on madangdb.* to madang@localhost with grant option;
commit;
```
