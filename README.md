#Wowza

### ENV
* **WOWZA_USER_NAME**
* **WOWZA_USER_PASSWORD**
* **WOWZA_PUBLISH_USER_NAME**
* **WOWZA_PUBLISH_USER_PASSWORD**
* **WOWZA_LICENSE**


### Example

```
docker run -d --name wowza -p 1935:1935 -p 8088:8088 \
  -e WOWZA_USER_NAME=wowza \
  -e WOWZA_USER_PASSWORD=wowza \
  -e WOWZA_PUBLISH_USER_NAME=wowza \
  -e WOWZA_PUBLISH_USER_PASSWORD=wowza \
  -e WOWZA_LICENSE=ET2A4-ntGJH-vjEM3-YbQY4-d6T9V-BVvVF-7mZxjdWappYK \
shcoder/wowza
```

----------------------------------------OR--------------------------------------------

```
FROM shcoder/wowza

MAINTAINER shcoder.alex@gmail.com

...etc
```