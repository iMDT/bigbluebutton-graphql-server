# bigbluebutton-graphql-server
Server-side implementation of BigBlueButton graphql

## Instructions

```sh
ssh root@bbb-graphql.bbb.imdt.dev -L 2333:127.0.0.1:8080 -L5433:127.0.0.1:5433

cd /root/
git clone https://github.com/iMDT/bigbluebutton-graphql-server.git
docker-compose up -d

# from within SSH:
cat /root/bigbluebutton-graphql-server/sql/ddl.sql | psql  -h 127.0.0.1 -p 5433  -U postgres
```
