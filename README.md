
# msa-httpbin

HTTP request & response service originally created by Kenneth Reitz.

## Usage

To build the microservice Docker image, execute the build script :

```
./build.sh
```

Once the container is created, execute it with the following command :

```
docker run -ti -p 8080:80 msagency/msa-httpbin
```

## Endpoints

- [/](/) : returns the httpbin original readme, listing all the URLs below :
- [/ip](/ip) returns Origin IP

```
$ curl http://localhost:8080/ip
{
  "origin": "172.17.0.1"
}
```
- [/user-agent](/user-agent) returns user-agent

```
$ curl http://localhost:8080/user-agent
{
  "user-agent": "curl/7.47.0"
}
```

- [/headers](/headers) returns header dict

```
$ curl http://localhost:8080/headers
{
  "headers": {
    "Accept": "*/*",
    "Connection": "close",
    "Host": "localhost",
    "User-Agent": "curl/7.47.0",
    "X-Real-Port": "80",
    "X-Real-Scheme": "http"
  }
}
```

- [/get](/get) returns GET data
- /post returns POST data
- /patch returns PATCH data
- /put returns PUT data
- /delete returns DELETE data
- [/encoding/utf8](/encoding/utf8) returns a page containing UTF-8 data
- [/gzip](/gzip) returns gzip-encoded data
- [/deflate](/deflate) returns deflate-encoded data
- [/status/:code](/status/418) returns given HTTP Status code
- [/response-headers?key=val](/response-headers?Server=httpbin&Content-Type=text%2Fplain%3B+charset%3DUTF-8) returns given response headers
- [/redirect/:n](/redirect/6) 302 redirects n times
- [/redirect-to?url=foo](/redirect-to?url=foo) 302 redirects to the foo URL
- [/redirect-to?url=foo&status_code=307](/redirect-to?url=foo&status_code=307) 307 redirects to the foo URL
- [/relative-redirect/:n](/relative-redirect/6) 302 relative redirects n times
- [/absolute-redirect/:n](/absolute-redirect/6) 302 absolute redirects n times
- [/cookies](/cookies) returns cookie data
- [/cookies/set?name=value](/cookies/set?k1=v1&k2=v2) sets one or more simple cookies
- [/cookies/delete?name](/cookies/delete?k1=&k2=) deletes one or more simple cookies
- [/basic-auth/:user/:passwd](/basic-auth/user/passwd) challenges HTTPBasic Auth
- [/hidden-basic-auth/:user/:passwd](/hidden-basic-auth/user/passwd) 404'd BasicAuth
- [/digest-auth/:qop/:user/:passwd/:algorithm](/digest-auth/auth/user/passwd/MD5) challenges HTTP Digest Auth
- [/digest-auth/:qop/:user/:passwd](/digest-auth/auth/user/passwd/MD5) challenges HTTP Digest Auth
- [/stream/:n](/stream/20) streams min(n, 100) lines
- [/delay/:n](/delay/3) delays responding for min(n, 10) seconds
- [/drip?numbytes=n&duration=s&delay=s&code=code](/drip?duration=5&code=200&numbytes=5) Drips data over a duration after an optional initial delay, then (optionally) returns with the given status code.
- [/range/1024?duration=s&chunk_size=code](/range/1024) streams n bytes, and allows specifying a Range header to select a subset of the data. Accepts a chunk_size and request duration parameter.
- [/html](/html) Renders an HTML Page
- [/robots.txt](/robots.txt) returns some robots.txt rules
- [/deny](/deny) denied by robots.txt file
- [/cache](/cache) returns 200 unless an If-Modified-Since or If-None-Match header is provided, when it returns a 304.
- [/cache/:n](/cache/60) sets a Cache-Control header for n seconds
- [/bytes/:n](/bytes/1024) generates n random bytes of binary data, accepts optional seed integer parameter
- [/stream-bytes/:n](/stream-bytes/1024) streams n random bytes of binary data, accepts optional seed and chunk_size integer parameters.
- [/links/:n](/links/10) returns a page containing n HTML links
- [/image](/image) returns a page containing an image based on sent Accept header
- [/image/png](/image/png) returns a page containing a PNG image
- [/image/jpeg](/image/jpeg) returns a page containing a JPEG image
- [/image/webp](/image/webp) returns a page containing a WEBP image
- [/image/svg](/image/svg) returns a page containing a SVG image
- [/forms/post](/forms/post) HTML form that submits to /post
- [/xml](/xml) returns some XML


## Standard endpoints

- [/ms/version](/ms/version) : returns the version number

- [/ms/name](/ms/name) : returns the name

- [/ms/readme.md](/ms/readme.md) : returns the readme (this file)

- [/ms/readme.html](/ms/readme.html) : returns the readme as html

- [/swagger/swagger.json](/swagger/swagger.json) : returns the swagger api documentation

- [/swagger/#/](/swagger/#/) : returns swagger-ui displaying the api documentation

- [/nginx/stats.json](/nginx/stats.json) : returns stats about Nginx

- [/nginx/stats.html](/nginx/stats.html) : returns a dashboard displaying the stats from Nginx


## About

A project by the [Microservices Agency](https://microservices.agency).
