
# msa-httpbin

HTTP request & response service, useful to test various HTTP operations.

Originally created by Kenneth Reitz.

## Quick start

Execute the microservice container with the following command :

```
docker run -ti -p 9901:80 msagency/msa-httpbin
```

## Example

```
$ curl http://localhost:9901/user-agent
{
  "user-agent": "curl/7.47.0"
}
```

## Endpoints

- [/httpbin/](/httpbin/) : returns the httpbin original readme, listing all the URLs below :
- [/httpbin/ip](/httpbin/ip) returns the origin IP
- [/httpbin/user-agent](/httpbin/user-agent) returns the user-agent
- [/httpbin/headers](/httpbin/headers) returns the header dict
- [/httpbin/get](/httpbin/get) returns GET data
- /post returns POST data
- /patch returns PATCH data
- /put returns PUT data
- /delete returns DELETE data
- [/httpbin/encoding/utf8](/httpbin/encoding/utf8) returns a page containing UTF-8 data
- [/httpbin/gzip](/httpbin/gzip) returns gzip-encoded data
- [/httpbin/deflate](/httpbin/deflate) returns deflate-encoded data
- [/httpbin/status/:code](/httpbin/status/418) returns given HTTP Status code
- [/httpbin/response-headers?key=val](/httpbin/response-headers?Server=httpbin&Content-Type=text%2Fplain%3B+charset%3DUTF-8) returns given response headers
- [/httpbin/redirect/:n](/httpbin/redirect/6) 302 redirects n times
- [/httpbin/redirect-to?url=foo](/httpbin/redirect-to?url=foo) 302 redirects to the foo URL
- [/httpbin/redirect-to?url=foo&status_code=307](/httpbin/redirect-to?url=foo&status_code=307) 307 redirects to the foo URL
- [/httpbin/relative-redirect/:n](/httpbin/relative-redirect/6) 302 relative redirects n times
- [/httpbin/absolute-redirect/:n](/httpbin/absolute-redirect/6) 302 absolute redirects n times
- [/httpbin/cookies](/httpbin/cookies) returns cookie data
- [/httpbin/cookies/set?name=value](/httpbin/cookies/set?k1=v1&k2=v2) sets one or more simple cookies
- [/httpbin/cookies/delete?name](/httpbin/cookies/delete?k1=&k2=) deletes one or more simple cookies
- [/httpbin/basic-auth/:user/:passwd](/httpbin/basic-auth/user/passwd) challenges HTTPBasic Auth
- [/httpbin/hidden-basic-auth/:user/:passwd](/httpbin/hidden-basic-auth/user/passwd) 404'd BasicAuth
- [/httpbin/digest-auth/:qop/:user/:passwd/:algorithm](/httpbin/digest-auth/auth/user/passwd/MD5) challenges HTTP Digest Auth
- [/httpbin/digest-auth/:qop/:user/:passwd](/httpbin/digest-auth/auth/user/passwd/MD5) challenges HTTP Digest Auth
- [/httpbin/stream/:n](/httpbin/stream/20) streams min(n, 100) lines
- [/httpbin/delay/:n](/httpbin/delay/3) delays responding for min(n, 10) seconds
- [/httpbin/drip?numbytes=n&duration=s&delay=s&code=code](/httpbin/drip?duration=5&code=200&numbytes=5) Drips data over a duration after an optional initial delay, then (optionally) returns with the given status code.
- [/httpbin/range/1024?duration=s&chunk_size=code](/httpbin/range/1024) streams n bytes, and allows specifying a Range header to select a subset of the data. Accepts a chunk_size and request duration parameter.
- [/httpbin/html](/httpbin/html) Renders an HTML Page
- [/httpbin/robots.txt](/httpbin/robots.txt) returns some robots.txt rules
- [/httpbin/deny](/httpbin/deny) denied by robots.txt file
- [/httpbin/cache](/httpbin/cache) returns 200 unless an If-Modified-Since or If-None-Match header is provided, when it returns a 304.
- [/httpbin/cache/:n](/httpbin/cache/60) sets a Cache-Control header for n seconds
- [/httpbin/bytes/:n](/httpbin/bytes/1024) generates n random bytes of binary data, accepts optional seed integer parameter
- [/httpbin/stream-bytes/:n](/httpbin/stream-bytes/1024) streams n random bytes of binary data, accepts optional seed and chunk_size integer parameters.
- [/httpbin/links/:n](/httpbin/links/10) returns a page containing n HTML links
- [/httpbin/image](/httpbin/image) returns a page containing an image based on sent Accept header
- [/httpbin/image/png](/httpbin/image/png) returns a page containing a PNG image
- [/httpbin/image/jpeg](/httpbin/image/jpeg) returns a page containing a JPEG image
- [/httpbin/image/webp](/httpbin/image/webp) returns a page containing a WEBP image
- [/httpbin/image/svg](/httpbin/image/svg) returns a page containing a SVG image
- [/httpbin/forms/post](/httpbin/forms/post) HTML form that submits to /post
- [/httpbin/xml](/httpbin/xml) returns some XML


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
