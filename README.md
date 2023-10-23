# keda-redis-autoscaling

# dependencies

```bash
pip3 install -r requirements.txt
```

## local redis setup
```bash
docker run -d --name redis-stack-server -p 6379:6379 redis/redis-stack-server:latest  

redis-cli -h localhost
# inside the redis-cli you can run the following commands
    KEYS *
    LRANGE mylist 0 -1
```

### neccessary envs

```bash
## set in dockerfile
export REDIS_HOST=localhost
export REDIS_PORT=6379
# export REDIS_PASSWORD= default none



# not set
export REDIS_LIST_KEY=mylist # name of the list
export REDIS_APPEND_RAND_MAX_NUMBER=20 # 1-20 arası random sayıda ekleme yapcak (20 = n)
export REDIS_APPEND_SLEEP_SECS=20 # sleep between redis operations
export REDIS_DELETE_RAND_MAX_NUMBER=20 # max delete number
export REDIS_DELETE_CHANCE_EACH_LOOP=20 # make it 100 to delete on each loop
```