Scenario: 1. Student gets information about his  events
Given The szglab5-backend 
When I use GET "/studentregistrations/" endpoint with parameter "1"
Then I GET a success response

Scenario: 2. Student gets information about his  events
Given The szglab5-backend 
When I use GET "/studentregistrations/" endpoint with invalid parameter
Then I GET an error response