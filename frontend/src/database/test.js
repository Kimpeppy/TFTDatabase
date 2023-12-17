const fs = require('fs');

function readDragonJson() {
  try {
    // Read the JSON file
    const rawData = fs.readFileSync('dragon.json');
    
    // Parse the JSON data
    var dragonData = JSON.parse(rawData);
    dragonData = dragonData.items;

    const substringToCheck = 'augments';


    const items = dragonData.filter(item => item.icon.toLowerCase().includes(substringToCheck.toLowerCase()));
    
    // Do something with the data
    console.log('Dragon Data:', items);

    itemJson = JSON.stringify(items)

    const filePath = 'augments.json';
    fs.writeFileSync(filePath, itemJson);

    // Return the data or perform other operations
    return dragonData;
  } catch (error) {
    console.error('Error reading JSON file:', error.message);
    return null;
  }
}



// Call the function
readDragonJson();

