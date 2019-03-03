## Version
```
- Docker version 18.09.2
- docker-compose version 1.23.2
- ruby 2.5.3
- Rails 5.2.2
- mysql  Ver 8.0.15
- nginx version: nginx/1.15.9
```

## Directory
```
.
├── README.md
├── db_data
├── docker
├── docker-compose.yml
├── myapp
└── setting_sample
```

### Start
```
git clone https://github.com/2no553/rails_docker.git
cd rails_docker/
docker-compose up -d --build
docker-compose run --rm app rake db:create
```

### Reference
- [Quickstart: Compose and Rails | Docker Documentation](https://docs.docker.com/compose/rails/)
- [Docker + Rails + Puma + Nginx + MySQL - Qiita](https://qiita.com/eighty8/items/0288ab9c127ddb683315)
- [an example of puma and ngxin with ruby on rails config.md](https://gist.github.com/duleorlovic/762c4ffdf43c8eb31aa7)
- [puma/config.rb at e0f544d0ec5769c05e439ba251b5685cb546fed5 · puma/puma](https://github.com/puma/puma/blob/e0f544d0ec5769c05e439ba251b5685cb546fed5/examples/config.rb)
- [puma/nginx.md at master · puma/puma](https://github.com/puma/puma/blob/master/docs/nginx.md)

