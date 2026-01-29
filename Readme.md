

<h1>DaySprings – Ruby on Rails</h1>

<hr>

<h2>Day 1 – Ruby & Rails Basics</h2>

<p><b>Ruby</b></p>
<p>• Dynamically typed, open-source language</p>
<p>• Everything in Ruby is an object</p>
<p>• Latest version: Ruby 3.x</p>
<p>• Follows SOLID principles (except Interface Segregation)</p>

<p><b>Rails</b></p>
<p>• Web framework built using Ruby</p>
<p>• Latest version: Rails 8.x</p>

<p><b>Important Points</b></p>
<p>• Version management: RVM / RBENV</p>
<p>• Install Rails: <code>gem install rails</code></p>
<p>• Rails provides MVC structure and boilerplate code</p>

<p><b>Create Rails Project</b></p>
<p>• rails new project_name</p>
<p>• rails new project_name --api</p>
<p>• rails generate scaffold</p>

<hr>

<h2>Day 2 – Database & Scaffold</h2>

<p><b>Database Commands</b></p>
<p>• rails db:create</p>
<p>• rails db:migrate</p>
<p>• rails db:seed</p>

<p><b>Scaffold</b></p>
<p>• Generates model, controller, views, routes</p>
<p>• rails generate scaffold Customer name:string email:string</p>

<p><b>database.yml</b></p>
<p>• Stores database configuration</p>
<p>• Incorrect values cause database errors</p>

<p><b>Rails Console</b></p>
<p>• rails console</p>

<hr>

<h2>Day 3 – Rails Concepts & Structure</h2>

<p>• Syntactic Sugar</p>
<p>• Convention over Configuration</p>
<p>• Model → singular</p>
<p>• Controller → plural</p>

<p><b>config Folder</b></p>
<p>• database.yml</p>
<p>• routes.rb</p>
<p>• application.rb</p>
<p>• environment.rb</p>
<p>• environments (development, test, production)</p>

<p><b>db Folder</b></p>
<p>• migrate/</p>
<p>• schema.rb</p>
<p>• seeds.rb</p>

<hr>

<h2>Day 4 – app Folder & Ruby Basics</h2>

<p><b>app Folder</b></p>
<p>• controllers</p>
<p>• models</p>
<p>• views</p>
<p>• javascript</p>
<p>• mailers</p>
<p>• jobs</p>

<p><b>Best Practice</b></p>
<p>• Thin Controllers</p>
<p>• Thick Models</p>

<p><b>Data Types</b></p>
<p>• String</p>
<p>• Integer</p>
<p>• Float</p>
<p>• Symbol</p>
<p>• Boolean</p>
<p>• nil</p>

<p><b>Variables</b></p>
<p>• Local</p>
<p>• Global ($)</p>
<p>• Instance (@)</p>
<p>• Class (@@)</p>
<p>• Constant (UPPERCASE)</p>

<hr>

<h2>Day 5 – Methods & Type Casting</h2>

<p>• Methods return last expression automatically</p>
<p>• Use <code>return</code> only when required</p>

<p><b>Comments</b></p>
<p>• Single line: #</p>
<p>• Multi-line: =begin =end</p>

<p><b>Type Casting</b></p>
<p>• to_i</p>
<p>• to_s</p>
<p>• to_f</p>

<hr>

<h2>Day 6 – Loops & Collection Methods</h2>

<p><b>Loops</b></p>
<p>• for</p>
<p>• while</p>
<p>• loop do</p>
<p>• until</p>

<p><b>Collection Methods</b></p>
<p>• each</p>
<p>• select</p>
<p>• reject</p>
<p>• map / collect</p>

<p>• Methods do not modify arrays by default</p>
<p>• Use <code>!</code> to modify arrays</p>
<p>• Boolean methods end with <code>?</code></p>

<pre>
Product.where(is_active: true).limit(10)
</pre>

<hr>

<h2>Day 7 – Classes, Inheritance & Naming</h2>

<p><b>Class Naming</b></p>
<p>• Class names use CamelCase</p>
<p>• First letter must be capital</p>

<pre>
class CustomController
end
</pre>

<p><b>Method Naming</b></p>
<p>• Method and variable names use snake_case</p>

<pre>
def limit_active
end
</pre>

<p><b>Inheritance</b></p>
<p>• Ruby supports single inheritance</p>
<p>• super is used to call parent methods</p>

<p><b>Method Lookup Order</b></p>
<p>• Child → Parent → Object → Kernel → BasicObject</p>

<pre>
"Sample".respond_to?(:upcase)
</pre>

<hr>

<h2>Day 8 – Conditional Statements & Access Modifiers</h2>

<p><b>Conditional Statements</b></p>
<p>• if / elsif / else</p>
<p>• unless</p>
<p>• Ternary operator (? :)</p>
<p>• case</p>

<p><b>Access Modifiers</b></p>
<p>• Public – accessible everywhere</p>
<p>• Private – accessible only inside the class</p>
<p>• Protected – accessible in class and subclasses</p>

<p>• Private methods cannot be called directly</p>
<p>• Can be accessed indirectly using public methods</p>

<hr>

<h2>Day 9 – Validations & Rails Features</h2>

<p>• Email validation available from Rails 6+</p>
<p>• Encryption / Decryption introduced in Rails 7+</p>

<p><b>Inbuilt Validations</b></p>

<pre>
validates :email, presence: true
validates :email, uniqueness: true
</pre>

<p><b>Custom Validation</b></p>

<pre>
validate :check_price

def check_price
  errors.add(:stock, "Stock not available") if stock == 0
end
</pre>

<hr>
<h2>Day 10</h2>
<h2>Scopes</h2>

<p>Scopes are reusable database queries in Rails.</p>

<p><b>Types</b></p>
<p>• Non-parameterized scope</p>
<pre>scope :out_of_stock, -> { where("stock <= ?", 0) }</pre>

<p>• Parameterized scope</p>
<pre>scope :blacklisted_customers, ->(ids) { where(id: ids) }</pre>



<h2>Assignment</h2>

<p><b>Customers – Blacklisted</b></p>
<p>1. Route → blacklisted_customers</p>
<p>2. Scope → blacklisted_customers</p>
<p>3. Controller → fetch blocked customers</p>
<p>4. View → display customers</p>

<pre>
@customers = Customer.blacklisted_customers([1,5,6])
</pre>



<p><b>Products – Out of Stock</b></p>
<p>1. Route → out_of_stock</p>
<p>2. Scope → out_of_stock</p>
<p>3. Controller → fetch products</p>
<p>4. View → display products</p>

<pre>
@products = Product.out_of_stock
</pre>



<p><b>Note</b></p>
<p>• Instance variable names must match in controller and view</p>
<p>• Use @customers and @products correctly</p>



<hr>
<h2>Day 11</h2>
<h2>Rails Components</h2>

<p><b>Model</b></p>
<p>• ActiveModel – Validations and logic without database table</p>
<p>• ActiveRecord – Connects database table with Ruby objects (CRUD)</p>

<p><b>Controller</b></p>
<p>• ActionController – Handles requests, params, redirects</p>

<p><b>Views</b></p>
<p>• ActionView – HTML pages, forms, helpers</p>
<p>• ActionText – Rich text content</p>

<p><b>Routes</b></p>
<p>• ActionDispatch – Maps URL to controller action</p>

<p><b>Controller + View</b></p>
<p>• ActionPack – Connects controller and view</p>

<p><b>Mails</b></p>
<p>• ActionMailer – Send emails</p>
<p>• ActionMailbox – Receive emails</p>

<p><b>Inbuilt Helpers</b></p>
<p>• ActiveSupport – Utility methods like present?, blank?</p>

<p><b>Background Jobs</b></p>
<p>• ActiveJob – Background processing (Sidekiq, Resque)</p>

<p><b>WebSockets</b></p>
<p>• ActionCable – Real-time features</p>

<p><b>File Upload</b></p>
<p>• ActiveStorage – Upload images and files</p>



<h2>Which Component Does What</h2>

<p>• CRUD → ActiveRecord</p>
<p>• Validations → ActiveModel</p>
<p>• Forms & Helpers → ActionView</p>
<p>• Params → ActionController</p>
<p>• Routes → ActionDispatch</p>
<p>• Background Jobs → ActiveJob</p>
<p>• WebSockets → ActionCable</p>



<h2>Rails Request Flow</h2>

<p>
Browser → Routes → Controller → Model → View → Response
</p>



<h2>Routing & Controller Errors (Assignment)</h2>

<p><b>Except route</b></p>
<pre>resources :products, except: [:show]</pre>
<p>• Error: No route matches GET /products/:id</p>

<p><b>Delete show method</b></p>
<p>• Error: ProductsController#show not found</p>

<p><b>Delete show.html.erb</b></p>
<p>• Error: ActionController::UnknownFormat</p>

<p><b>Only route</b></p>
<pre>resources :products, only: [:edit, :destroy]</pre>
<p>• Only these routes will work</p>

<p><b>Add column</b></p>
<pre>
rails g migration AddExpireToProducts expire:date
rails db:migrate
</pre>

<p><b>Generate controller</b></p>
<pre>rails g controller admin</pre>
<p>• Controller and views are created</p>

<hr>
<h2>Day 12 – Practice Session</h2>
<hr>

<h2>Day 13 – Rails Tasks</h2>

<p><b>1. Migrations</b></p>

<p>Add Column</p>
<pre>
rails g migration AddPhoneToCustomers phone:integer
rails db:migrate
</pre>

<p>Remove Column</p>
<pre>
rails g migration RemovePhoneFromCustomers phone:integer
rails db:migrate
</pre>

<p>• Migration files are created in db/migrate</p>
<p>• schema.rb updates automatically</p>

<hr>

<p><b>2. Action Text</b></p>

<p>Install Action Text</p>
<pre>
rails action_text:install
rails db:migrate
</pre>

<p>• Adds tables for rich text and file storage</p>

<p>Use in Model</p>
<pre>
has_rich_text :about_me
</pre>

<p>Permit in Controller</p>
<pre>
params.require(:customer).permit(:name, :email, :about_me)
</pre>

<p>Use in View</p>
<pre>
&lt;%= form.rich_text_area :about_me %&gt;
</pre>

<hr>

<p><b>3. Ruby Array Practice</b></p>

<pre>
a1 = [1,2,3,4]
a2 = [2,4]
</pre>

<p>Common values</p>
<pre>
a1 & a2
</pre>

<p>Remove duplicates</p>
<pre>
a1 | a2
</pre>

<hr>

<p><b>4. Params Debugging</b></p>

<p>Check params in controller</p>
<pre>
raise params.inspect
</pre>

<p>Example Output</p>
<pre>
{"controller"=>"customers","action"=>"index"}
</pre>

<p>• index action has only route info</p>
<p>• create/update actions have form data</p>

<hr>

<h2>Active Storage – Single File</h2>

<pre>has_one_attached :profile_photo</pre>
<pre>&lt;%= form.file_field :profile_photo %&gt;</pre>
<pre>&lt;%= image_tag @customer.profile_photo %&gt;</pre>

<hr>

<h2>Active Storage – Multiple Files</h2>

<pre>has_many_attached :product_photo</pre>
<pre>product_photo: []</pre>
<pre>&lt;%= form.file_field :product_photo, multiple: true %&gt;</pre>

<hr>

<p><b>Note</b></p>
<p>• Always permit files</p>
<p>• Same variable names in controller & view</p>

<hr>
<h2>Task 1 – Invoice Upload (Active Storage)</h2>

<p>Attach file to model</p>
<pre>has_one_attached :invoice</pre>

<p>Permit in controller</p>
<pre>:invoice</pre>

<p>Upload in form</p>
<pre>&lt;%= form.file_field :invoice %&gt;</pre>

<p>View invoice</p>
<pre>&lt;%= link_to "View Invoice", url_for(@product.invoice) %&gt;</pre>

<hr>

<h2>Task 2 – Add DOB (Migration)</h2>

<p>Generate migration</p>
<pre>rails g migration AddDobToCustomers dob:date</pre>

<p>Run migration</p>
<pre>rails db:migrate</pre>

<p>Form field</p>
<pre>&lt;%= form.date_field :dob %&gt;</pre>

<hr>

<h2>Task 3 – Form Helpers</h2>

<p>text_field → name</p>
<p>email_field → email</p>
<p>password_field → password</p>
<p>text_area → description</p>
<p>number_field → price</p>
<p>file_field → upload</p>
<p>check_box → true/false</p>
<p>select → dropdown</p>

<hr>

