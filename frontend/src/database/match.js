const mysql = require("mysql");
const fs = require('fs');

var nameList = [
  'Time', 'Past', 'Future', 'Dev',
  'Fly', 'Flying', 'Soar', 'Soaring', 'Power', 'Falling',
  'Fall', 'Jump', 'Cliff', 'Mountain', 'Rend', 'Red', 'Blue',
  'Green', 'Yellow', 'Gold', 'Demon', 'Demonic', 'Panda', 'Cat',
  'Kitty', 'Kitten', 'Zero', 'Memory', 'Trooper', 'XX', 'Bandit',
  'Fear', 'Light', 'Glow', 'Tread', 'Deep', 'Deeper', 'Deepest',
  'Mine', 'Your', 'Worst', 'Enemy', 'Hostile', 'Force', 'Video',
  'Game', 'Donkey', 'Mule', 'Colt', 'Cult', 'Cultist', 'Magnum',
  'Gun', 'Assault', 'Recon', 'Trap', 'Trapper', 'Redeem', 'Code',
  'Script', 'Writer', 'Near', 'Close', 'Open', 'Cube', 'Circle',
  'Geo', 'Genome', 'Germ', 'Spaz', 'Shot', 'Echo', 'Beta', 'Alpha',
  'Gamma', 'Omega', 'Seal', 'Squid', 'Money', 'Cash', 'Lord', 'King',
  'Duke', 'Rest', 'Fire', 'Flame', 'Morrow', 'Break', 'Breaker', 'Numb',
  'Ice', 'Cold', 'Rotten', 'Sick', 'Sickly', 'Janitor', 'Camel', 'Rooster',
  'Sand', 'Desert', 'Dessert', 'Hurdle', 'Racer', 'Eraser', 'Erase', 'Big',
  'Small', 'Short', 'Tall', 'Sith', 'Bounty', 'Hunter', 'Cracked', 'Broken',
  'Sad', 'Happy', 'Joy', 'Joyful', 'Crimson', 'Destiny', 'Deceit', 'Lies',
  'Lie', 'Honest', 'Destined', 'Bloxxer', 'Hawk', 'Eagle', 'Hawker', 'Walker',
  'Zombie', 'Sarge', 'Capt', 'Captain', 'Punch', 'One', 'Two', 'Uno', 'Slice',
  'Slash', 'Melt', 'Melted', 'Melting', 'Fell', 'Wolf', 'Hound',
  'Legacy', 'Sharp', 'Dead', 'Mew', 'Chuckle', 'Bubba', 'Bubble', 'Sandwich', 'Smasher', 'Extreme', 'Multi', 'Universe', 'Ultimate', 'Death', 'Ready', 'Monkey', 'Elevator', 'Wrench', 'Grease', 'Head', 'Theme', 'Grand', 'Cool', 'Kid', 'Boy', 'Girl', 'Vortex', 'Paradox'
];

function generate() {
  if (nameList.length > 0) {
    // Generate a random index
    var randomIndex = Math.floor(Math.random() * nameList.length);

    // Get the random name from the array
    var finalName = nameList[randomIndex];

    // Remove the picked name from the array
    nameList.splice(randomIndex, 1);

    return finalName;
  } else {
    console.log("No more names in the list");
    return null;
  }
}


function generateUsers() {
  try {
    const map1 = new Set();
    for (let i = 1; i < 9; i++) {
      let matchNum = i;
      const filePath = `match/match${matchNum}.json`;
      const rawData = fs.readFileSync(filePath);
      var dragonData = JSON.parse(rawData);
      participants = dragonData.info.participants
      const participantIds = participants.map(participant => participant.puuid);
      for (participant of participantIds) {
        map1.add(participant)
      }
    }
    const map2 = new Map()
    for (participant of map1) {
      map2.set(participant, generate())

      const participantQuery = 'INSERT INTO participant (participantID, participantName) VALUES (?, ?)';

      connection.query(participantQuery, [participant, map2.get(participant)], (err, results) => {
        if (err) {
          console.error("Error inserting data into MySQL:", err);
        } else {
          console.log(`Inserted participant into MySQL`);
        }
      });
    }
    return map2
  } catch (error) {
    console.error('Error reading JSON file:', error.message);
    return null;
  }
}

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


function readMatchjson() {
  try {
    const users = generateUsers();

    for (let i = 1; i < 9; i++) {
      let matchNum = i;
      const filePath = `match/match${matchNum}.json`;
      const rawData = fs.readFileSync(filePath);
      var dragonData = JSON.parse(rawData);
      matchID = dragonData.metadata.match_id
      participants = dragonData.info.participants

      const participantIds = participants.map(participant => participant.puuid);
      const places = participants.map(participant => participant.placement);
      const augments = participants.map(participant => participant.augments);
      const units = participants.map(participant => participant.units);

      const gameID = Math.random().toString(16).substr(2, 225);

      //console.log(units);

      const gameQuery = 'INSERT INTO game (gameID, participantID1, participantID2, participantID3, participantID4, participantID5, participantID6, participantID7, participantID8) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)'

      connection.query(gameQuery, [gameID, participantIds[0], participantIds[1], participantIds[2], participantIds[3], participantIds[4], participantIds[5], participantIds[6], participantIds[7]], (err, results) => {
          if (err) {
            console.error("Error inserting data into MySQL:", err);
          } else {
            console.log(`Inserted game into MySQL`);
          }
        });

      var tempUnits = new Array(12);

      for (var j = 0; j < units.length; j++) {
        for (var k = 0; k < 12; k++) {
          if (k >= units[j].length) {
            tempUnits[j] = '';
          } else {
            tempUnits[j] = units[j][k].character_id;
          }
        }

        const teamID = Math.random().toString(16).substr(2, 225);

        const teamCompQuery = 'INSERT INTO teamComps (teamID, champion_name1, champion_name2, champion_name3, champion_name4, champion_name5, champion_name6, champion_name7, champion_name8, champion_name9, champion_name10, champion_name11, champion_name12, augment_name1, augment_name2, augment_name3, place) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)'

        connection.query(teamCompQuery, [teamID, tempUnits[0], tempUnits[1], tempUnits[2], tempUnits[3], tempUnits[4], tempUnits[5], tempUnits[6], tempUnits[7], tempUnits[8], tempUnits[9], tempUnits[10], tempUnits[11],
          augments[j][0], augments[j][1], augments[j][2], places[j]], (err, results) => {
            if (err) {
              console.error("Error inserting data into MySQL:", err);
            } else {
              console.log(`Inserted teamComp into MySQL`);
            }
          });

        console.log(users)

        const pInGTQuery = 'INSERT INTO pInGT (participantID,  teamID, gameID) VALUES (?, ?, ?)'

        connection.query(pInGTQuery, [participantIds[j], teamID, gameID], (err, results) => {
          if (err) {
            console.error("Error inserting data into MySQL:", err);
          } else {
            console.log(`Inserted participant into MySQL`);
          }
        });
      }
    }
      // Return the data or perform other operations
      return dragonData;
    } catch (error) {
      console.error("Error reading JSON file:", error.message);
      return null;
    }
  } 

function dropCreate() {
  const dropGQuery = 'DROP TABLE game'
  const dropTQuery = 'DROP TABLE teamComps'
  const dropPQuery = 'DROP TABLE participant'
  const dropPInGQuery = 'DROP TABLE pInGT'

  const createPQuery = 'CREATE TABLE participant (participantID VARCHAR(80) PRIMARY KEY, participantName VARCHAR(50));';
  const createTQuery = 'CREATE TABLE teamComps (teamID VARCHAR(50) PRIMARY KEY,champion_name1 VARCHAR(50),champion_name2 VARCHAR(50),champion_name3 VARCHAR(50),champion_name4 VARCHAR(50),champion_name5 VARCHAR(50),champion_name6 VARCHAR(50),champion_name7 VARCHAR(50),champion_name8 VARCHAR(50),champion_name9 VARCHAR(50),champion_name10 VARCHAR(50),champion_name11 VARCHAR(50),champion_name12 VARCHAR(50),augment_name1 VARCHAR(50),augment_name2 VARCHAR(50),augment_name3 VARCHAR(50), place INT);';
  const createGQuery = 'CREATE TABLE game (gameID VARCHAR(225) PRIMARY KEY,participantID1 VARCHAR(80),participantID2 VARCHAR(80),participantID3 VARCHAR(80),participantID4 VARCHAR(80),participantID5 VARCHAR(80),participantID6 VARCHAR(80),participantID7 VARCHAR(80),participantID8 VARCHAR(80));';
  const createPInGTQuery = 'CREATE TABLE pInGT (participantID VARCHAR(80), gameID VARCHAR(225), teamID VARCHAR(50));';

  connection.query(dropGQuery, (err, results) => {
    if (err) {
      console.error("Error inserting data into MySQL:", err);
    } else {
      console.log(`Dropped G`);
    }
  });

  connection.query(dropTQuery, (err, results) => {
    if (err) {
      console.error("Error inserting data into MySQL:", err);
    } else {
      console.log(`Dropped T`);
    }
  });

  connection.query(dropPQuery, (err, results) => {
    if (err) {
      console.error("Error inserting data into MySQL:", err);
    } else {
      console.log(`Dropped P`);
    }
  });

  connection.query(dropPInGQuery, (err, results) => {
    if (err) {
      console.error("Error inserting data into MySQL:", err);
    } else {
      console.log(`Dropped P`);
    }
  });

  connection.query(createGQuery, (err, results) => {
    if (err) {
      console.error("Error inserting data into MySQL:", err);
    } else {
      console.log(`Inserted game into MySQL`);
    }
  });

  connection.query(createTQuery, (err, results) => {
    if (err) {
      console.error("Error inserting data into MySQL:", err);
    } else {
      console.log(`Inserted teamComps into MySQL`);
    }
  });

  connection.query(createPQuery, (err, results) => {
    if (err) {
      console.error("Error inserting data into MySQL:", err);
    } else {
      console.log(`Inserted participants into MySQL`);
    }
  });

  connection.query(createPInGTQuery, (err, results) => {
    if (err) {
      console.error("Error inserting data into MySQL:", err);
    } else {
      console.log(`Inserted participants into MySQL`);
    }
  });
}

dropCreate();
readMatchjson();
