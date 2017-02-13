
# msa-httpbin

HTTP request & response service, useful to test various HTTP operations.

Built with [httpbin](https://github.com/Runscope/httpbin), originally created by Kenneth Reitz.

## Quick start

Execute the microservice container with the following command :

    docker run -ti -p 9901:80 msagency/msa-httpbin

## Example(s)

    $ curl http://localhost:9901/user-agent
    {
      "user-agent": "curl/7.47.0"
    }

## Endpoints

- GET [/httpbin/](/httpbin/) : returns the httpbin original readme, listing all the URLs below :
- GET [/httpbin/ip](/httpbin/ip) returns the origin IP
- GET [/httpbin/user-agent](/httpbin/user-agent) returns the user-agent
- GET [/httpbin/headers](/httpbin/headers) returns the header dict
- GET [/httpbin/get](/httpbin/get) returns GET data
- POST [/post]() returns POST data
- PATCH [/patch]() returns PATCH data
- PUT [/put]() returns PUT data
- DELETE [/delete]() returns DELETE data
- GET [/httpbin/encoding/utf8](/httpbin/encoding/utf8) returns a page containing UTF-8 data
- GET [/httpbin/gzip](/httpbin/gzip) returns gzip-encoded data
- GET [/httpbin/deflate](/httpbin/deflate) returns deflate-encoded data
- GET [/httpbin/status/:code](/httpbin/status/418) returns given HTTP Status code
- GET [/httpbin/response-headers?key=val](/httpbin/response-headers?Server=httpbin&Content-Type=text%2Fplain%3B+charset%3DUTF-8) returns given response headers
- GET [/httpbin/redirect/:n](/httpbin/redirect/6) 302 redirects n times
- GET [/httpbin/redirect-to?url=foo](/httpbin/redirect-to?url=foo) 302 redirects to the foo URL
- GET [/httpbin/redirect-to?url=foo&status_code=307](/httpbin/redirect-to?url=foo&status_code=307) 307 redirects to the foo URL
- GET [/httpbin/relative-redirect/:n](/httpbin/relative-redirect/6) 302 relative redirects n times
- GET [/httpbin/absolute-redirect/:n](/httpbin/absolute-redirect/6) 302 absolute redirects n times
- GET [/httpbin/cookies](/httpbin/cookies) returns cookie data
- GET [/httpbin/cookies/set?name=value](/httpbin/cookies/set?k1=v1&k2=v2) sets one or more simple cookies
- GET [/httpbin/cookies/delete?name](/httpbin/cookies/delete?k1=&k2=) deletes one or more simple cookies
- GET [/httpbin/basic-auth/:user/:passwd](/httpbin/basic-auth/user/passwd) challenges HTTPBasic Auth
- GET [/httpbin/hidden-basic-auth/:user/:passwd](/httpbin/hidden-basic-auth/user/passwd) 404'd BasicAuth
- GET [/httpbin/digest-auth/:qop/:user/:passwd/:algorithm](/httpbin/digest-auth/auth/user/passwd/MD5) challenges HTTP Digest Auth
- GET [/httpbin/digest-auth/:qop/:user/:passwd](/httpbin/digest-auth/auth/user/passwd/MD5) challenges HTTP Digest Auth
- GET [/httpbin/stream/:n](/httpbin/stream/20) streams min(n, 100) lines
- GET [/httpbin/delay/:n](/httpbin/delay/3) delays responding for min(n, 10) seconds
- GET [/httpbin/drip?numbytes=n&duration=s&delay=s&code=code](/httpbin/drip?duration=5&code=200&numbytes=5) Drips data over a duration after an optional initial delay, then (optionally) returns with the given status code.
- GET [/httpbin/range/1024?duration=s&chunk_size=code](/httpbin/range/1024) streams n bytes, and allows specifying a Range header to select a subset of the data. Accepts a chunk_size and request duration parameter.
- GET [/httpbin/html](/httpbin/html) Renders an HTML Page
- GET [/httpbin/robots.txt](/httpbin/robots.txt) returns some robots.txt rules
- GET [/httpbin/deny](/httpbin/deny) denied by robots.txt file
- GET [/httpbin/cache](/httpbin/cache) returns 200 unless an If-Modified-Since or If-None-Match header is provided, when it returns a 304.
- GET [/httpbin/cache/:n](/httpbin/cache/60) sets a Cache-Control header for n seconds
- GET [/httpbin/bytes/:n](/httpbin/bytes/1024) generates n random bytes of binary data, accepts optional seed integer parameter
- GET [/httpbin/stream-bytes/:n](/httpbin/stream-bytes/1024) streams n random bytes of binary data, accepts optional seed and chunk_size integer parameters.
- GET [/httpbin/links/:n](/httpbin/links/10) returns a page containing n HTML links
- GET [/httpbin/image](/httpbin/image) returns a page containing an image based on sent Accept header
- GET [/httpbin/image/png](/httpbin/image/png) returns a page containing a PNG image
- GET [/httpbin/image/jpeg](/httpbin/image/jpeg) returns a page containing a JPEG image
- GET [/httpbin/image/webp](/httpbin/image/webp) returns a page containing a WEBP image
- GET [/httpbin/image/svg](/httpbin/image/svg) returns a page containing a SVG image
- GET [/httpbin/forms/post](/httpbin/forms/post) HTML form that submits to /post
- GET [/httpbin/xml](/httpbin/xml) returns some XML

## Standard endpoints

- GET [/ms/version](/ms/version) : returns the version number
- GET [/ms/name](/ms/name) : returns the name
- GET [/ms/readme.md](/ms/readme.md) : returns the readme (this file)
- GET [/ms/readme.html](/ms/readme.html) : returns the readme as html
- GET [/swagger/swagger.json](/swagger/swagger.json) : returns the swagger api documentation
- GET [/swagger/#/](/swagger/#/) : returns swagger-ui displaying the api documentation
- GET [/nginx/stats.json](/nginx/stats.json) : returns stats about Nginx
- GET [/nginx/stats.html](/nginx/stats.html) : returns a dashboard displaying the stats from Nginx

## About

A project by the [Microservices Agency](http://microservices.agency).
