# Сборка проекта


## Установка

```sh
git clone https://github.com/MakarenkoAI/geometry.ostis.git --recursive
cd geometry.ostis
git checkout feat/new_version
cd scripts
./install_platform.sh
```

## Запуск

  ```sh
	Launch knowledge processing machine
	./scripts/run_sc_server.sh
	*in another terminal*
	Launch semantic web interface at localhost:8000
	./scripts/run_sc_web.sh
  ```
За тем открываем в браузере localhost:8000
