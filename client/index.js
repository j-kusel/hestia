const config = require('./config/config');

const configExpress = require('./config/express');
const app = configExpress();

require('./models/half_plus_two.js')(app);

app.listen(config.port);
console.log(`Models client running at http://${config.domain}:${config.port}/`);

