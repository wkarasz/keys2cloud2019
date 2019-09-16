# Create an API Spec  
## Overview
In this hands-on lab you will import an existing API specification into TIBCO Connected Intelligence Cloud and explore the API.  The goal is to give you a best practice overview of an API that you can leverage in future projects.  

### Get Started  

Sign into TIBCO Cloud and open API Specs.  There are many ways to navigate to API Spec but let’s start with this.

1)	Start at Welcome to your TIBCO Cloud.
2)	Select Integration.
3)	Select Flogo.
4)	Select API Specs.  

### Create Group

Let’s create a GROUP to organize your APIs.

1)	Select the + sign next to GROUP.  
  <insert image>
2)	Name your group CustomerExperienceAirport and press Create group.
3)	Select your CustomerExperienceAirport group.
  
### Import API Spec  
Import https://raw.githubusercontent.com/wkarasz/keys2cloud2019/master/project/apispecs/ApiSpecs/v2/passengers.json  

API Spec allows you to start from scratch or start with a existing specification that you can import from a your file system, URL or Github.  We are going to start with a existing API spec that will be imported from your file system.  

1)	Select the up-arrow next to create to and choose Import from filesystem.
2)	Navigate to where you extracted the connected customer experience artifacts and choose CustomerExperienceAirport/APISpecs/v2/passengers.json.

### Explore API Spec

Now let’s explore the passenger API spec.    The purpose of this exploration is to showcase best practices as discussed in the above sections.

1)	Select passengers.
2)	Passengers API spec is opened to the /v2/passengers/{passengerid} resource and the GET method is highlighted and the request is shown.  The /v2/passengers/{passengerid} is the path developers will use to access this resource, the API is expecting a passengerid to be passed to it in the request.
3)	Select Response.  200 and 404 responses have been specified.  200 is the success response and 404 will be returned if no passenger is found for {passengerid}.
4)	Select Response 200/OK.  This shows an example of the 200 success response.  The passenger API spec is telling us that this API will respond with passenger details that include passengerid, name, street, city, and zip code.  Select Cancel. 
5)	Explore some more.  Navigate to Resource /v2/passengers.  Resources for POST, GET, PUT and PATCH have been specified. 

### Preview API

Previewing the API gives you a complete overview of the structure of your API along with input parameters, output responses and samples.  

1)	Select Preview.
2)	You are presented with interactive documentation showing all resources, parameters, methods and responses.  You can share this API specification with anyone in your organization and solicited feedback before you begin to implement.  This supports continuous planning and is a best practice development methodology.  
