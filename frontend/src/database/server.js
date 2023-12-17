const express = require('express');
const app = express();
const mysql = require('mysql2');
const port = 4000;

const connection = mysql.createConnection({
  host: '127.0.0.1',
  user: 'mkim225',
  password: '8bg5f4fz',
  database: 'tftSqlDatabase'
});

// Create a route for the API endpoint
app.get('/api/champions', (req, res) => {
  // Connect to MySQL
  connection.connect((err) => {
    if (err) {
      console.error('Error connecting to MySQL:', err);
      res.status(500).json({ error: 'Internal Server Error' });
      return;
    }

    // Execute the query
    connection.query('SELECT * FROM champions', (queryError, results) => {
      // Handle query error
      if (queryError) {
        console.error('Error executing query:', queryError);
        res.status(500).json({ error: 'Internal Server Error' });
        return;
      }

      // Send the results as JSON
      res.json(results);

      // Close the connection after sending the response
      connection.end();
    });
  });
});



// Start the Express server
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
