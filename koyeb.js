var forever = require('forever-monitor');

var child = new (forever.Monitor)('index.js', {
  silent: false,
});
child.start();



/* 

THANKS TO TEAM ETERNITY

*/
