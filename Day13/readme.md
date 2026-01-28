<h2>Day 13 – Rails Tasks & Notes</h2>

<hr>

<h2>1. Database & Migrations</h2>

<p><b>Add Column</b></p>
<pre>
rails generate migration AddColumnPhoneToCustomer phone_number:integer
rails db:migrate
</pre>

<p><b>Remove Column</b></p>
<pre>
rails generate migration RemoveColumnPhoneToCustomer phone_number:integer
rails db:migrate
</pre>

<p>• Migration files are created in db/migrate</p>
<p>• schema.rb updates after migration</p>
<p>• id column is auto-generated as Primary Key</p>

<hr>

<h2>2. Action Text (Rich Text)</h2>

<p><b>Install Action Text</b></p>
<pre>
rails action_text:install
rails db:migrate
</pre>

<p><b>Tables Added</b></p>
<p>• action_text_rich_texts</p>
<p>• active_storage_blobs</p>
<p>• active_storage_attachments</p>
<p>• active_storage_variant_records</p>



<p><b>Use in Model</b></p>
<pre>
class Customer < ApplicationRecord
  has_rich_text :about_me
end
</pre>

<p><b>Permit in Controller</b></p>
<pre>
params.require(:customer).permit(:name, :email, :about_me)
</pre>

<p><b>Use in View</b></p>
<pre>
&lt;%= form.rich_text_area :about_me %&gt;
</pre>

<hr>

<h2>3. Ruby Array Operations</h2>

<pre>
a1 = [1,2,3,4,5,6]
a2 = [1,3,5]
</pre>

<p><b>Intersection (Common values)</b></p>
<pre>
a1 & a2   # [1,3,5]
</pre>

<p><b>Union (Remove duplicates)</b></p>
<pre>
a1 | a2   # [1,2,3,4,5,6]
</pre>

<p>• & gives common elements</p>
<p>• | merges arrays and removes duplicates</p>

<hr>

<h2>4. Debugging with params.inspect</h2>

<p>• Used to check data coming from routes and forms</p>

<p><b>Example in create action</b></p>
<pre>
def create
  raise customer_params.inspect
end
</pre>

<p><b>Output</b></p>
<pre>
#&lt;ActionController::Parameters
 {"name"=>"john", "email"=>"1@gmail.com", "about_me"=>"&lt;div&gt;text&lt;/div&gt;"}
 permitted: true&gt;
</pre>

<p><b>Inspect in index action</b></p>
<pre>
def index
  raise params.inspect
end
</pre>

<p><b>Output</b></p>
<pre>
#&lt;ActionController::Parameters
 {"controller"=>"customers", "action"=>"index"}
 permitted: false&gt;
</pre>

<p>• Only route info is available in index</p>

<hr>

<h2>5. Git Commands</h2>

<pre>
git status
git diff
</pre>

<hr>

<h2>Work To-Do List</h2>

<p>1. Use raise params.inspect to understand data flow</p>
<p>2. Study how & and | work in Ruby</p>
<p>3. Implement Action Text for Product model</p>
<p>4. Compare schema.rb before and after Action Text</p>
<p>5. Explore file upload gems: CarrierWave, Paperclip</p>

<hr>

<p><b>Summary</b></p>
<p>• Day 13 covers migrations, Action Text, array logic, and params debugging</p>
