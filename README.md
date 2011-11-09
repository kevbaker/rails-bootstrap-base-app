# Rails Bootstrap Base Application
 
## Overview

Rails Bootstrap Base App was made as a quick way to DRY up the development process for projects needing some basic web application functionality. It includes a basic design, authentication, authorization and some seed data. It also started as an attempt to integrate Twitter's Bootstrap HTML5 kit with Rails. The goal would be to eventually extract the entire project as a gem.

## Features

* Layout - Twitter's Bootstrap, [twitter/bootstrap](https://github.com/twitter/bootstrap)
* Authentication - Devise, [platformatec/devise](https://github.com/plataformatec/devise)
* Authentication Token - uses the Devise auth token feature, for API access
* Authorization - Canan, [ryanb/cancan](https://github.com/ryanb/cancan)
* Feedback - Simple feedback application to test API and secure pages
* Seed data - Seed data to kick start users for authentication and authorization.
            

## Installation

* Clone the git repository
* Create your database
* Update the database.yml with correct credentials
* rake db:migrate
* rake db:seed
* rails s

## Usage
* open in browser
* click on secure
* login using "admin@domain.com:secret", "user@domain.com:secret" or register
* Get auth token from API 

```
curl -X GET "http://localhost:3000/users/1.json" -u "admin@domain.com:secret"
```

* Then use auth token to make secure request rather than using username and password each time. Auth token will remain static unless changed in the user model.

```
curl -X GET "http://localhost:3000/feedbacks/1.json?auth_token=<authentication_token>"
```

## Todo

See issues - [rails-bootstrap-base-app/issues](https://github.com/kevbaker/rails-bootstrap-base-app/issues)
