# Build the project


## Installation

```sh
git clone https://github.com/MakarenkoAI/geometry.ostis.git --recursive
cd geometry.ostis
git checkout feat/new_version
cd scripts
./install_platform.sh
```

## Run

  ```sh
	Launch knowledge processing machine
	./scripts/run_sc_server.sh
	*in another terminal*
	Launch semantic web interface at localhost:8000
	./scripts/run_sc_web.sh
  ```
Then open localhost:8000
