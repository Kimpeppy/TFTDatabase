const mysql = require("mysql");
const fs = require('fs');

const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "Sugar129!!",
  database: "tft_database",
});

// Connect to MySQL
connection.connect((err) => {
  if (err) {
    console.error("Error connecting to MySQL:", err);
    return;
  }
  console.log("Connected to MySQL");

  // Close the connection after testing
  connection.end();
});

function readJson() {
  try {
    // Read the JSON file
    const rawData = fs.readFileSync('augments.json');
    
    // Parse the JSON data
    var augments = JSON.parse(rawData);

    // Return the data or perform other operations
    return augments;
  } catch (error) {
    console.error('Error reading JSON file:', error.message);
    return null;
  }
}

var augments = readJson();

for (const augment of augments) {
  const apiName = augment.apiName;
  const name = augment.name;

  const query = `INSERT INTO augments (augment_id, augment_name) VALUES (?, ?)`;

  connection.query(query, [apiName, name], (err, results) => {
      if (err) {
          console.error("Error inserting data into MySQL:", err);
      } else {
          console.log(`Inserted item with apiName ${apiName} into MySQL`);
      }
  });
}





