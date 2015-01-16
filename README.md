USAGE:

```sh
docker run -p 80:80 -v /kibana/config.js:/html/config.js arypurnomoz/kibana
  
# or with an url (https not supported)
docker run -p 80:80 -e CONFIG_URL=http://kibana.conf arypurnomoz/kibana
```
