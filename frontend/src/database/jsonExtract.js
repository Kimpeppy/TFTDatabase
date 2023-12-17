const mysql = require("mysql2");
const fs = require('fs');

// [
//   "NA1_4858069057",
//   "NA1_4858045991",
//   "NA1_4857590188",
//   "NA1_4857567374",
//   "NA1_4857534643",
//   "NA1_4857512352",
//   "NA1_4857218150",
//   "NA1_4857178201",
//   "NA1_4857132936",
//   "NA1_4856937488",
//   "NA1_4856915940",
//   "NA1_4856888341",
//   "NA1_4856595936",
//   "NA1_4856567271",
//   "NA1_4856458289",
//   "NA1_4855891828",
//   "NA1_4855863891",
//   "NA1_4855640914",
//   "NA1_4855614304",
//   "NA1_4855605186"
// ]

const connection = mysql.createConnection({
  host: "127.0.0.1",
  user: "mkim225",
  password: "8bg5f4fz",
  database: "tftSqlDatabase",
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

function readDragonJson() {
  try {
    // Read the JSON file
    const rawData = fs.readFileSync('radiant.json');
    
    // Parse the JSON data
    var items = JSON.parse(rawData);

    // Return the data or perform other operations
    return items;
  } catch (error) {
    console.error('Error reading JSON file:', error.message);
    return null;
  }
}

var items = readDragonJson();

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





