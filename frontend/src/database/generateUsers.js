const fs = require('fs');

var nameList = [
    'Time','Past','Future','Dev',
    'Fly','Flying','Soar','Soaring','Power','Falling',
    'Fall','Jump','Cliff','Mountain','Rend','Red','Blue',
    'Green','Yellow','Gold','Demon','Demonic','Panda','Cat',
    'Kitty','Kitten','Zero','Memory','Trooper','XX','Bandit',
    'Fear','Light','Glow','Tread','Deep','Deeper','Deepest',
    'Mine','Your','Worst','Enemy','Hostile','Force','Video',
    'Game','Donkey','Mule','Colt','Cult','Cultist','Magnum',
    'Gun','Assault','Recon','Trap','Trapper','Redeem','Code',
    'Script','Writer','Near','Close','Open','Cube','Circle',
    'Geo','Genome','Germ','Spaz','Shot','Echo','Beta','Alpha',
    'Gamma','Omega','Seal','Squid','Money','Cash','Lord','King',
    'Duke','Rest','Fire','Flame','Morrow','Break','Breaker','Numb',
    'Ice','Cold','Rotten','Sick','Sickly','Janitor','Camel','Rooster',
    'Sand','Desert','Dessert','Hurdle','Racer','Eraser','Erase','Big',
    'Small','Short','Tall','Sith','Bounty','Hunter','Cracked','Broken',
    'Sad','Happy','Joy','Joyful','Crimson','Destiny','Deceit','Lies',
    'Lie','Honest','Destined','Bloxxer','Hawk','Eagle','Hawker','Walker',
    'Zombie','Sarge','Capt','Captain','Punch','One','Two','Uno','Slice',
    'Slash','Melt','Melted','Melting','Fell','Wolf','Hound',
    'Legacy','Sharp','Dead','Mew','Chuckle','Bubba','Bubble','Sandwich','Smasher','Extreme','Multi','Universe','Ultimate','Death','Ready','Monkey','Elevator','Wrench','Grease','Head','Theme','Grand','Cool','Kid','Boy','Girl','Vortex','Paradox'
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
    }
    console.log(map2)
    
  } catch (error) {
    console.error('Error reading JSON file:', error.message);
    return null;
  }
}



// Call the function
generateUsers();


