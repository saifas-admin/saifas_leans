SaifasLeans
============
Leans are nodes for storing string-data in database with relations.
For example, there is parent-child relations.

Response format
============
The application gets requests from clients and send result to clients as JSON or HTML.
When lean doesn't exist, application will render 404.html or empty JSON.

Request log
============
When the application get request, it will insert to request log in database a record with request parameters.

TDD
============
Development is carried out with use of the TDD paradigm.
There is RSpec-tests for controller, models, external resource, view, decorator and helper.
Also, Copybara has been used for view functionality.