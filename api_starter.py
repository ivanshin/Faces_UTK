import uvicorn
import yaml


# read yaml config file
def read_config(cf_path):
    with open(cf_path, 'r') as cf:
        return yaml.safe_load(cf)


# api starter
if __name__ == "__main__":
    config = read_config("api_config.yaml")

    c_host = config['HOST']
    c_port = config['PORT']
    print(config)
    uvicorn.run(config['API_SRC'], host= c_host, port= c_port, reload= True)
