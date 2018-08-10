<h1>Glucose Level application API</h1>

<h2>ERD</h2>
https://imgur.com/a/BldXSRC

<h2>Repositories for application</h2>
https://github.com/jvo978/glucose-level-client
<p></p>
https://github.com/jvo978/glucose-level-api
<p></p>

<h2>How it Works</h2>
<p>User signs in and homepage welcomes the user. The user then will direct themself to the doctors tab where you can add more doctors and there is a status of how many doctors there are. There will be a add button to add more doctors. When button is click, you will be given a form with input fields to fill in. User will then submit it and the new doctor will show up on the list upon success. User can edit/delete as well. Edit button will open up a new form with the input fields populated with the targeted doctor information. If successful, the doctors new information will be updated. Delete works the same, but will delete it off the list.</p>

<h2>Deployed sites</h2>
https://glucose-level-api.herokuapp.com/
<br>
https://jvo978.github.io/glucose-level-client/

<h2>What technologies were used:</h2>

<ul>
<li>Ruby</li>
<li>Rails</li>
<li>Postgres SQL</li>
<li>Command Terminal</li>
<li>Curl scripts</li>
<li>Heroku</li>
</ul>

<h2>Development Process:</h2>
<ul>
<li>I started out generating my table by running bin/rails generate scaffold Doctor along with attributes and user reference.</li>
<li>Verified my schema and doctor controller</li>
<li>Added attributes to Doctor Serializer</li>
<li>Made relationship/validation connection between doctor and user inside their models</li>
<li>Test curlscripts and once successful, focused on the front end.</li>
</ul>

<h2>Future Iteration/ fixed problems</h2>
<ul>
<li>Fix: Removed user_id from doctor_params which got update and delete to work.<li>
<li>Future: Add more styling</li>
<li>Future: make relationship between patient and doctor. Then have crud actions also for patient.</li>
</ul>

<h2>API Routes</h2>
<ul>
<li>user/sign-in    **GET</li>
<li>user/sign-up    **POST</li>
<li>user/sign-out    **DELETE</li>
<li>user/change-password    **PATCH</li>
<li>doctors/    **GET</li>
<li>doctors/:id    **GET</li>
<li>doctors/:id    **PATCH</li>
<li>doctors/:id    **DELETE</li>
<li>doctors/    **POST</li>
</ul>
