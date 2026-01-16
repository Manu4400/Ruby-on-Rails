<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Ruby on Rails – Project Structure & Concepts</title>
</head>
<body>

<h1>Ruby on Rails – Project Structure & Concepts</h1>

<h2>Convention over Configuration</h2>
<p>
Rails follows <strong>Convention over Configuration</strong>, meaning developers do not need to specify
everything manually. If Rails conventions are followed, the framework handles configuration automatically.
</p>

<hr>

<h2>Important Folders & Files</h2>

<h3>lib/</h3>
<ul>
  <li>Used to store custom Ruby code</li>
  <li>Reusable modules, services, and utilities</li>
  <li>Auto-loaded by Rails when named correctly</li>
</ul>

<h3>app/</h3>
<p>Contains core application code:</p>
<ul>
  <li><strong>models/</strong> – Business logic and database interaction (Fat Model)</li>
  <li><strong>controllers/</strong> – Request handling (Thin Controller)</li>
  <li><strong>views/</strong> – UI templates</li>
  <li><strong>helpers/</strong> – Repetitive view logic</li>
  <li><strong>mailers/</strong> – Email handling (welcome, confirmation emails)</li>
  <li><strong>jobs/</strong> – Background jobs</li>
  <li><strong>concerns/</strong> – Shared reusable logic</li>
</ul>

<h3>Asset Pipeline</h3>
<ul>
  <li>Manages CSS, JavaScript, and images</li>
  <li>Rails 6+ supports Webpacker / Importmaps</li>
  <li>Final compiled assets are served from the <strong>public/</strong> folder</li>
</ul>

<h3>public/</h3>
<ul>
  <li>Contains resolved static assets</li>
  <li>Files are directly accessible via browser</li>
</ul>

<h3>storage/ (Rails 7+)</h3>
<ul>
  <li>Used by Active Storage</li>
  <li>Handles file uploads (images, PDFs, videos)</li>
  <li>Supports local and cloud storage</li>
</ul>

<h3>tmp/</h3>
<ul>
  <li>Temporary files generated when running the server</li>
  <li>Safe to delete</li>
  <li>If errors occur, delete and restart the server</li>
</ul>

<h3>log/</h3>
<ul>
  <li>Stores application logs</li>
  <li>Different logs for different environments</li>
  <li>Helps debugging and monitoring</li>
</ul>

<hr>

<h2>Models & Database</h2>

<h3>Active Model / Active Record</h3>
<ul>
  <li>Database tables are generated automatically using Ruby code</li>
  <li>No manual SQL required</li>
  <li>Schema changes are handled via migrations</li>
</ul>

<h3>schema.rb</h3>
<ul>
  <li>Holds all database tables and columns</li>
  <li>Auto-generated file</li>
  <li><strong>Do NOT edit manually</strong></li>
</ul>

<hr>

<h2>Credentials & Configuration</h2>

<h3>credentials.yml.enc</h3>
<ul>
  <li>Stores encrypted secrets (API keys, passwords)</li>
  <li>Rails 6+ / Rails 8 feature</li>
</ul>

<h3>config/</h3>
<ul>
  <li>Environment-specific configurations</li>
  <li>Supports development, test, and production environments</li>
</ul>

<hr>

<h2>Gems & Dependency Management</h2>

<h3>Gemfile</h3>
<ul>
  <li>Lists all gems used in the project</li>
</ul>

<h3>Gemfile.lock</h3>
<ul>
  <li>Stores exact gem versions and dependencies</li>
  <li>Shows inter-dependencies between gems</li>
  <li>Should NOT be manually modified</li>
</ul>

<hr>

<h2>Testing</h2>

<h3>Testing Frameworks</h3>
<ul>
  <li><strong>Minitest</strong> – Default, lightweight, limited, not suitable for JS testing</li>
  <li><strong>RSpec</strong> – Powerful and widely used in real-world projects</li>
</ul>

<h3>test/</h3>
<ul>
  <li>Contains unit tests for code inside app/</li>
  <li>JavaScript testing uses separate frameworks</li>
</ul>

<hr>

<h2>Mailers</h2>
<ul>
  <li>Uses Action Mailer</li>
  <li>Handles welcome emails, account creation emails, order confirmations</li>
</ul>

<hr>

<h2>Layouts & UI</h2>

<h3>layouts/</h3>
<ul>
  <li>Used for global UI changes</li>
  <li>Header, footer, colors, and styles across the app</li>
</ul>

<h3>manifest</h3>
<ul>
  <li>Controls assets like icons, buttons, and Bootstrap customization</li>
</ul>

<hr>

<h2>JavaScript Handling</h2>

<h3>Webpacker / WebKit</h3>
<ul>
  <li>Introduced in Rails 6</li>
  <li>Used to configure JavaScript files</li>
  <li>Rails 5 did not have built-in JS integration</li>
</ul>

<hr>

<h2>Docker</h2>
<ul>
  <li>Run Rails projects without local installation</li>
  <li>Docker manages Ruby, Rails, and dependencies</li>
</ul>

<hr>

<h2>Reusability & Best Practices</h2>

<h3>Concerns</h3>
<ul>
  <li>Used for repetitive logic</li>
  <li>Improves code reusability and cleanliness</li>
</ul>

<h3>Fat Model, Thin Controller</h3>
<ul>
  <li><strong>Fat Model</strong> – Business and data logic</li>
  <li><strong>Thin Controller</strong> – Request/response handling</li>
</ul>

<h3>Helpers</h3>
<ul>
  <li>Used for repetitive view logic</li>
</ul>

<hr>

<h2>Git & Security</h2>

<h3>.gitattributes</h3>
<ul>
  <li>Specifies files that should not be modified or exposed</li>
</ul>

<h3>Files Not to Modify Manually</h3>
<ul>
  <li>schema.rb</li>
  <li>Gemfile.lock</li>
  <li>Encrypted credentials</li>
</ul>

<hr>

<h2>File Types Difference</h2>

<h3>.rb (Ruby File)</h3>
<ul>
  <li>Contains application logic</li>
  <li>Classes, methods, and conditions</li>
</ul>

<h3>.yml (YAML File)</h3>
<ul>
  <li>Used for configuration</li>
  <li>Key-value based</li>
  <li>No executable logic</li>
</ul>

<hr>

<h2>Inheritance</h2>

<h3>Application Controller</h3>
<ul>
  <li>Base controller in Rails</li>
  <li>All other controllers inherit from it</li>
  <li>Common logic is placed here</li>
</ul>

<hr>

<h2>Summary</h2>
<p>
Rails is a structured, opinionated, and powerful framework. By following conventions,
using concerns, helpers, fat models, and thin controllers, developers can build
clean, scalable, and maintainable applications.
</p>




<hr>

<h2>Ruby Basics: Data Types, Variables & Objects</h2>

<h3>Variables and Data Types</h3>
<p>
Ruby is a dynamically typed language. The data type of a variable is determined at runtime.
</p>

<pre>
<code>
name = :ruby        # Symbol
str  = "Manu"       # String

str = str + "MR"    # Valid string concatenation

=begin
name = name + :on_rails
This will cause an error because Ruby does not allow concatenation
of a String and a Symbol using the '+' operator.
=end
</code>
</pre>

<ul>
  <li><strong>String</strong> is mutable</li>
  <li><strong>Symbol</strong> is immutable and memory-efficient</li>
</ul>

---

<h3>Checking Class of Variables</h3>

<pre>
<code>
puts name.class
puts str.class
</code>
</pre>

<p>
This prints the data type (class) of the variable.
</p>

---

<h3>Object ID and Memory Behavior</h3>

<pre>
<code>
puts name.object_id
puts str.object_id

5.times do
  puts str.object_id
end
</code>
</pre>

<ul>
  <li><strong>Symbol</strong> shares the same object_id</li>
  <li><strong>String</strong> may create new objects in memory</li>
  <li>Symbols are reused, strings are not</li>
</ul>

---



---

<h3>Key Concepts Demonstrated</h3>

<ul>
  <li><strong>attr_accessor</strong> creates getter and setter methods</li>
  <li><strong>@@count</strong> is a class variable shared by all objects</li>
  <li><strong>initialize</strong> runs automatically when an object is created</li>
  <li><strong>self.count</strong> is a class method</li>
</ul>

---

<h2>Summary</h2>
<ul>
  <li>Symbols are immutable and memory-efficient</li>
  <li>Strings are mutable and stored separately in memory</li>
  <li>Ruby automatically manages data types</li>
  <li>Classes support encapsulation and reusability</li>
</ul>

</body>
</html>
