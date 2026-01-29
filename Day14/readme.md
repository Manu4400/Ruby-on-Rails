<h2>Day 14 – Active Storage (Single File)</h2>

<p><b>Install Active Storage</b></p>
<pre>
rails active_storage:install
rails db:migrate
</pre>

<p><b>Attach file to model</b></p>
<pre>
has_one_attached :profile_photo
</pre>

<p><b>Upload in form</b></p>
<pre>
&lt;%= form.file_field :profile_photo %&gt;
</pre>

<p><b>Display image</b></p>
<pre>
&lt;%= image_tag @customer.profile_photo %&gt;
</pre>

<hr>

<h2>Active Storage – Multiple Files</h2>

<p><b>Attach multiple files</b></p>
<pre>
has_many_attached :product_photo
</pre>

<p><b>Permit in controller</b></p>
<pre>
product_photo: []
</pre>

<p><b>Upload multiple files</b></p>
<pre>
&lt;%= form.file_field :product_photo, multiple: true %&gt;
</pre>


<h2>Task 1 – Invoice Upload (Active Storage)</h2>

<p><b>Attach invoice to model</b></p>
<pre>
has_one_attached :invoice
</pre>

<p><b>Permit invoice in controller</b></p>
<pre>
:invoice
</pre>

<p><b>Upload PDF in form</b></p>
<pre>
&lt;%= form.file_field :invoice, accept: "application/pdf" %&gt;
</pre>

<p><b>Show invoice (show page)</b></p>
<pre>
&lt;% if @product.invoice.attached? %&gt;
  &lt;%= link_to "View Invoice", url_for(@product.invoice) %&gt;
&lt;% end %&gt;
</pre>

<p><b>PDF validation (optional)</b></p>
<pre>
validate :invoice_type
</pre>

<hr>

<h2>Task 2 – Add DOB to Customers</h2>

<p><b>Generate migration</b></p>
<pre>
rails g migration AddDobToCustomers dob:date
</pre>

<p><b>Run migration</b></p>
<pre>
rails db:migrate
</pre>

<p><b>Permit DOB</b></p>
<pre>
:dob
</pre>

<p><b>Add DOB field in form</b></p>
<pre>
&lt;%= form.date_field :dob %&gt;
</pre>

<p><b>Show DOB</b></p>
<pre>
&lt;%= @customer.dob %&gt;
</pre>

<hr>

<h2>Task 3 – Form Helpers</h2>

<p>• text_field → name, title</p>
<p>• email_field → email</p>
<p>• password_field → password</p>
<p>• text_area → feedback, description</p>
<p>• number_field → price, stock</p>
<p>• file_field → uploads</p>
<p>• check_box → true / false</p>
<p>• select → dropdown</p>
<p>• submit → save button</p>

<hr>


<p><b>Display images</b></p>
<pre>
&lt;% @product.product_photo.each do |photo| %&gt;
  &lt;%= image_tag photo %&gt;
&lt;% end %&gt;
</pre>

<hr>

<p><b>Note</b></p>
<p>• Always permit attachments in controller</p>
<p>• Use same instance variable names</p>
<p>• Active Storage works for images & PDFs</p>

