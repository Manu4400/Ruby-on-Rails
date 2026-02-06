 <h1>ActiveRecord Query Methods (Rails)</h1>

  <p>
    ActiveRecord provides inbuilt methods to interact with the database
    without writing raw SQL. These methods are widely used in real-time
    Rails applications.
  </p>


  <h2>1. New vs Create</h2>

  <h3>🔹 new</h3>
  <p>
    <code>new</code> only creates an object in memory.  
    It does <b>NOT save</b> data into the database until <code>save</code> is called.
  </p>

  <pre>
c = Customer.new(
  name: "Demo",
  email: "demo@gmail.com",
  mob: 1234567890,
  dob: "2024-04-11"
)
  </pre>

  <div >
    ID is <b>nil</b>, so the record is not saved yet.
  </div>

  <pre>
c.save
  </pre>

  <div >
     After <code>save</code>, data is inserted and ID is generated.
  </div>

  <h3>🔹 create</h3>
  <p>
    <code>create</code> creates the object and saves it immediately.
    No need to call <code>save</code>.
  </p>

  <pre>
c = Customer.create(
  name: "Demo1",
  email: "demo1@gmail.com",
  mob: 1234567890,
  dob: "2024-04-11"
)
  </pre>

  <div >
     Record is saved instantly and ID is generated.
  </div>

 
  <h2>2. Delete vs Destroy</h2>

  <h3>🔹 delete</h3>
  <p>
    <code>delete</code> removes the record directly from the database.
    It does <b>NOT</b> run callbacks or delete associated records.
  </p>

  <pre>
Customer.delete(21)
  </pre>

  <div >
 Fast but unsafe if associations exist.
  </div>

  <h3>🔹 destroy</h3>
  <p>
    <code>destroy</code> removes the record and also:
  </p>
  <ul>
    <li>Runs callbacks</li>
    <li>Deletes associated records (ActiveStorage, ActionText, etc.)</li>
  </ul>

  <pre>
Customer.destroy(22)
  </pre>

  <div>
    Recommended when associations are present.
  </div>


  <h2>3. Insert Data</h2>

  <h3>🔹 Insert Single Record</h3>

  <pre>
Customer.create(
  name: "Example",
  email: "example@gmail.com",
  mob: 1234567890,
  dob: "2024-04-11"
)
  </pre>

  <h3>🔹 Insert Multiple Records</h3>

  <pre>
Customer.create(
  { name: "Demo1", email: "demo1@gmail.com", mob: 123, dob: "2024-04-11" },
  { name: "Demo2", email: "demo2@gmail.com", mob: 456, dob: "2024-04-11" }
)
  </pre>


  <h2>4. find vs find_by</h2>

  <h3>🔹 find</h3>
  <p>
    <code>find</code> fetches record by ID.
    If record is not found, it throws an error.
  </p>

  <pre>
Customer.find(111)
  </pre>

  <div class>
    Raises <b>ActiveRecord::RecordNotFound</b>
  </div>

  <h3>🔹 find_by</h3>
  <p>
    <code>find_by</code> returns <code>nil</code> if record is not found.
    No error is thrown.
  </p>

  <pre>
Customer.find_by(id: 111)
  </pre>

  <div>
    Always check for <code>nil</code> before using the result.
  </div>

  
  <h2>5. where</h2>

  <p>
    <code>where</code> fetches records matching given conditions.
    It always returns an <b>array</b>.
  </p>

  <pre>
Customer.where(mob: 1234567890)
  </pre>

  <ul>
    <li>If records exist → returns array of records</li>
    <li>If not → returns empty array <code>[]</code></li>
    <li>No error is thrown</li>
  </ul>