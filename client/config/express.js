const morgan = require('morgan');
const bodyParser = require('body-parser');
const methodOverride = require('method-override');
const express = require('express');

module.exports = () => {
    const app = express();
    app.use(morgan('dev'));
    app.use(methodOverride());
    app.use(bodyParser.urlencoded({
        extended: true
    }));
    app.use(bodyParser.json());
    app.use(express.static('public'));

    app.set('views', './views');
    app.set('view engine', 'ejs');

    return app;
}
