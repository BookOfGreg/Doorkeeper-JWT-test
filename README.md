# Doorkeeper-JWT-Test

## What?
This is an example repo combining Rails API with the Doorkeeper admin UI, making use of Devise for login pages, admin auth, and password flows. The Doorkeeper tokens issued are JWTs with a payload + header that looks like this:
```JSON
[{"iss": "account_service",
  "iat": 1527438897,
  "exp": 1527440097,
  "jti": "add3ef92-a512-429b-a834-3a3523866cdd",
  "sub": "account_service|1",
  "expires_at": "2018-05-27T16:54:57Z",
  "user": {"id": 1, "email": "local@example.com"}},
 {"typ": "JWT", "alg": "HS512"}]
```

## Why?
Firstly I wanted to understand what was needed for SSO/OAuth2/JWT combo to work in the modern age, secondly everything else had some shortcomings either in usability or flexibility.

https://github.com/doorkeeper-gem/doorkeeper-devise-client
 - Using old versions, no JWT
 
https://github.com/digivizer/warden-jwt
 - Uses password flow strategy

https://github.com/waiting-for-dev/warden-jwt_auth
 - Is good but limits the JWT decode options

https://github.com/mbleigh/omniauth-jwt
 - Expects HTTP based on redirects for flow

https://github.com/betterup/devise-doorkeeper
 - No JWT support

## How?
I cobbled together examples from all the above + the JWT spec + Auth0 articles.
This is not a complete application and you shouldn't just drop it into your production env! YMMV, this is for reference only.
