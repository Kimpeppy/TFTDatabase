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
    const rawData = fs.readFileSync('emblems.json');
    
    // Parse the JSON data
    var items = JSON.parse(rawData);

    // Return the data or perform other operations
    return items;
  } catch (error) {
    console.error('Error reading JSON file:', error.message);
    return null;
  }
}

var items = readJson();

for (const item of items) {
  const apiName = item.apiName;
  const name = item.name;
  const isUnique = item.unique; // Renamed to avoid conflict with SQL keyword
  const component1 = item.composition[0]; // Assuming composition is an array
  const component2 = item.composition[1]; // Assuming composition is an array

  const query = `INSERT INTO items (item_keyName, item_name, is_unique, component1, component2) VALUES (?, ?, ?, ?, ?)`;

  connection.query(query, [apiName, name, isUnique, component1, component2], (err, results) => {
      if (err) {
          console.error("Error inserting data into MySQL:", err);
      } else {
          console.log(`Inserted item with apiName ${apiName} into MySQL`);
      }
  });
}




