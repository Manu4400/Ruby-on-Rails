<!DOCTYPE html>

<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>DAY 3 – Rails Project Configuration Guide</title>
  <style>
    body {
      font-family: Arial, Helvetica, sans-serif;
      background: #f9fafb;
      color: #111827;
      line-height: 1.6;
      padding: 40px;
    }
    h1, h2, h3 {
      color: #1f2937;
    }
    h1 {
      border-bottom: 3px solid #2563eb;
      padding-bottom: 10px;
    }
    code {
      background: #e5e7eb;
      padding: 2px 6px;
      border-radius: 4px;
    }
    pre {
      background: #111827;
      color: #e5e7eb;
      padding: 16px;
      border-radius: 8px;
      overflow-x: auto;
    }
    section {
      background: #ffffff;
      padding: 24px;
      border-radius: 12px;
      box-shadow: 0 4px 12px rgba(0,0,0,0.08);
      margin-bottom: 32px;
    }
    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 16px;
    }
    th, td {
      border: 1px solid #d1d5db;
      padding: 10px;
      text-align: left;
    }
    th {
      background: #2563eb;
      color: white;
    }
    img {
      max-width: 100%;
      border-radius: 8px;
      margin-top: 12px;
    }
  </style>
</head>
<body>

<h1> DAY 3 – Rails Project Configuration Guide</h1>

<section>
  <h2>The Core Structure</h2>
  <ul>
    <li><strong>bin/</strong> – Executable tools like <code>bin/rails</code></li>
    <li><strong>config/</strong> – Application brain (routes, DB, environments)</li>
    <li><strong>application.rb</strong> – Global configuration hub</li>
    <li><strong>puma.rb</strong> – Web server performance configuration</li>
  </ul>
</section>

<section>
  <h2>Environments</h2>
  <ul>
    <li><strong>development.rb</strong> – Fast debugging & auto reload</li>
    <li><strong>test.rb</strong> – Safe testing sandbox</li>
    <li><strong>production.rb</strong> – Secure & optimized live environment</li>
  </ul>
</section>

<section>
  <h2>Initializers</h2>
  <ul>
    <li>assets.rb – CSS/JS compression</li>
    <li>content_security_policy.rb – XSS protection</li>
    <li>filter_parameter_logging.rb – Hide sensitive data</li>
    <li>inflections.rb – Pluralization rules</li>
    <li>ci.rb – CI optimization</li>
  </ul>
</section>

<section>
  <h2>Configuration Files</h2>
  <table>
    <tr><th>File</th><th>Purpose</th></tr>
    <tr><td>database.yml</td><td>Database connection</td></tr>
    <tr><td>cable.yml</td><td>WebSockets</td></tr>
    <tr><td>cache.yml</td><td>Fast memory storage</td></tr>
    <tr><td>queue.yml</td><td>Background jobs</td></tr>
    <tr><td>storage.yml</td><td>File uploads</td></tr>
    <tr><td>deploy.yml</td><td>Deployment steps</td></tr>
  </table>
</section>

<section>
  <h2>Rails Boot Sequence</h2>
  <ol>
    <li>boot.rb – Loads gems</li>
    <li>application.rb – Sets global rules</li>
    <li>environment.rb – Initializes the app</li>
  </ol>
</section>

<h1>DAY 3 – Rails Skip Commands</h1>

<section>
  <h2>Default Rails App</h2>
  <pre>rails new AppName</pre>
  <img src="https://github.com/user-attachments/assets/0a068621-a33e-478a-b0d3-0c2d060bcf79" alt="Default Rails App">
</section>

<section>
  <h2>Skip JavaScript</h2>
  <pre>rails new myapp --skip-javascript</pre>
  <img src="https://github.com/user-attachments/assets/da3bdfdf-52ea-405e-9b7a-cfdf58b5ef9c" alt="Skip JavaScript">
</section>

<section>
  <h2>Skip CSS</h2>
  <pre>rails new myapp --skip-css</pre>
</section>

<section>
  <h2>Skip Active Record</h2>
  <pre>rails new myapp --skip-active-record</pre>
  <img src="https://github.com/user-attachments/assets/991c7e60-b0cc-4aea-8b83-6c9a0c41ecdf" alt="Skip Active Record">
</section>

<section>
  <h2>Skip JBuilder</h2>
  <pre>rails new myapp --skip-jbuilder</pre>
</section>

<section>
  <h2>Skip Bundle</h2>
  <pre>rails new myapp --skip-bundle</pre>
</section>

<section>
  <h2>Summary</h2>
  <table>
    <tr><th>Flag</th><th>Effect</th></tr>
    <tr><td>--skip-javascript</td><td>No Turbo / AJAX</td></tr>
    <tr><td>--skip-css</td><td>No Styling</td></tr>
    <tr><td>--skip-active-record</td><td>No Database</td></tr>
    <tr><td>--skip-jbuilder</td><td>Manual JSON</td></tr>
    <tr><td>--skip-bundle</td><td>Manual gem install</td></tr>
  </table>
</section>

</body>
</html>
