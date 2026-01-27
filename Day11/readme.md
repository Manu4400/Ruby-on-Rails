<h2>1. Rails Components</h2>

<table>
  <tr>
    <th>Area</th>
    <th>Component</th>
    <th>Use</th>
  </tr>

  <tr>
    <td>Model</td>
    <td>ActiveModel</td>
    <td>Validations and logic without database</td>
  </tr>

  <tr>
    <td>Model</td>
    <td>ActiveRecord</td>
    <td>Connects database table with Ruby objects (CRUD)</td>
  </tr>

  <tr>
    <td>Controller</td>
    <td>ActionController</td>
    <td>Handles requests, params, redirects</td>
  </tr>

  <tr>
    <td>View</td>
    <td>ActionView</td>
    <td>HTML pages, forms, helpers</td>
  </tr>

  <tr>
    <td>View</td>
    <td>ActionText</td>
    <td>Rich text editor support</td>
  </tr>

  <tr>
    <td>Routes</td>
    <td>ActionDispatch</td>
    <td>Maps URL to controller</td>
  </tr>

  <tr>
    <td>View + Controller</td>
    <td>ActionPack</td>
    <td>Connects controller and view</td>
  </tr>

  <tr>
    <td>Mail</td>
    <td>ActionMailer</td>
    <td>Sends emails</td>
  </tr>

  <tr>
    <td>Mail</td>
    <td>ActionMailbox</td>
    <td>Receives emails</td>
  </tr>

  <tr>
    <td>Inbuilt</td>
    <td>ActiveSupport</td>
    <td>Extra helper methods</td>
  </tr>

  <tr>
    <td>Jobs</td>
    <td>ActiveJob</td>
    <td>Background jobs</td>
  </tr>

  <tr>
    <td>Network</td>
    <td>ActionCable</td>
    <td>WebSockets (real-time)</td>
  </tr>

  <tr>
    <td>Storage</td>
    <td>ActiveStorage</td>
    <td>Upload images and files</td>
  </tr>
</table>
</div>

<div class="box">
<h2>2. Which Component Does What</h2>
<ul>
  <li>CRUD → ActiveRecord</li>
  <li>Validations → ActiveModel</li>
  <li>Forms & Helpers → ActionView</li>
  <li>Params → ActionController</li>
  <li>Routes → ActionDispatch</li>
  <li>Background Jobs → ActiveJob</li>
  <li>WebSockets → ActionCable</li>
</ul>
</div>

<div class="box">
<h2>3. Rails Request Flow</h2>
<p>
Browser → Routes → Controller → Model → View → Response
</p>
</div>

<div class="box">
<h2>4. Assignment Notes</h2>

<p>
<b>except route</b><br>
<code>resources :products, except: [:show]</code><br>
Error: No route matches
</p>

<p>
<b>Delete show action</b><br>
Error: ProductsController#show not found
</p>

<p>
<b>Delete show view</b><br>
Error: UnknownFormat
</p>

<p>
<b>only route</b><br>
<code>resources :products, only: [:edit, :destroy]</code>
</p>

<p>
<b>Add column</b><br>
<code>rails g migration AddMobToCustomers mob:bigint</code><br>
<code>rails db:migrate</code>
</p>

<p>
<b>Generate controller</b><br>
<code>rails g controller admin</code><br>
Controller + views are created
</p>
