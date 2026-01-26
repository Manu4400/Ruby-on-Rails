<h1>Scopes in Ruby on Rails</h1>

<hr>

<h2>Scopes</h2>

<p>There are mainly two types of scopes in Rails:</p>

<h3>1. Non-Parameterized Scope</h3>
<p>Used when no external value is required.</p>

<pre>
scope :out_of_stock, -> { where("stock <= ?", 0) }
</pre>

<h3>2. Parameterized Scope</h3>
<p>Used when values are passed dynamically.</p>

<pre>
scope :blacklisted_customers, ->(customer_ids) { where(id: customer_ids) }
</pre>

<hr>

<h2>Assignment</h2>

<h3>1. Customers – Blacklisted Members</h3>

<p>The following steps are used to fetch blocked customers:</p>

<h4>Step 1: Define Routes</h4>

<pre>
resources :customers do
  collection do
    get 'blacklisted_customers'
  end
end
</pre>

<h4>Step 2: Create Scope in Model</h4>

<pre>
scope :blacklisted_customers, ->(customer_ids) { where(id: customer_ids) }
</pre>

<h4>Step 3: Create Controller Method</h4>

<pre>
def blacklisted_customers
  @list_of_blocked = [1, 5, 6]
  @customers = Customer.blacklisted_customers(@list_of_blocked)
end
</pre>

<h4>Step 4: Create View (blacklisted_customers.html.erb)</h4>

<pre>
&lt;% @customers.each do |customer| %&gt;
  &lt;tr&gt;
    &lt;td&gt;&lt;%= customer.name %&gt;&lt;/td&gt;
    &lt;td&gt;&lt;%= customer.email %&gt;&lt;/td&gt;
    &lt;td&gt;
      &lt;%= link_to "Show this customer", customer %&gt;
    &lt;/td&gt;
  &lt;/tr&gt;
&lt;% end %&gt;
</pre>

<hr>

<h3>2. Products – Out of Stock</h3>

<p>The following steps are used to fetch out-of-stock products:</p>

<h4>Step 1: Define Routes</h4>

<pre>
resources :products do
  collection do
    get 'out_of_stock'
  end
end
</pre>

<h4>Step 2: Create Scope in Model</h4>

<pre>
scope :out_of_stock, -> { where("stock <= ?", 0) }
</pre>

<h4>Step 3: Create Controller Method</h4>

<pre>
def out_of_stock
  @products = Product.out_of_stock
end
</pre>

<h4>Step 4: Create View (out_of_stock.html.erb)</h4>

<pre>
&lt;% @products.each do |product| %&gt;

  &lt;h5&gt;&lt;%= product.name %&gt;&lt;/h5&gt;

  &lt;p&gt;&lt;%= product.description %&gt;&lt;/p&gt;

  &lt;p&gt;
    &lt;strong&gt;Price:&lt;/strong&gt; ₹&lt;%= product.price %&gt;
  &lt;/p&gt;

  &lt;p&gt;
    &lt;strong&gt;Stock:&lt;/strong&gt; &lt;%= product.stock %&gt;
  &lt;/p&gt;

  &lt;p&gt;
    &lt;strong&gt;Status:&lt;/strong&gt;
    &lt;span class="badge &lt;%= product.is_active ? 'bg-success' : 'bg-danger' %&gt;"&gt;
      &lt;%= product.is_active ? "Active" : "Inactive" %&gt;
    &lt;/span&gt;
  &lt;/p&gt;

  &lt;div&gt;
    &lt;%= link_to "View Product", product %&gt;
  &lt;/div&gt;

&lt;% end %&gt;
</pre>

<hr>

<h2>Important Note</h2>

<p>
• The instance variable names must remain consistent.<br>
• Do not change <code>@products</code> or <code>@customers</code>.<br>
• Changing variable names may cause errors in views.
</p>
