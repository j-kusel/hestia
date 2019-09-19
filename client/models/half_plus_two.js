const axios = require('axios');
const config = require('../config/config');

module.exports = (app) => {
    app.route('/half_plus_two')
        .get((req, res) => res.render('half_plus_two'))
        .post((req, res) => 
            axios.post(`http://${config.models.domain}:${config.models.port}/v1/models/half_plus_two:predict`, { instances: req.body.instances.map(inst => parseFloat(inst)) })
                .then((response) => res.status(200).send({ predictions: response.data.predictions }))
                .catch((err) => {
                    console.log(err);
                    res.status(500).send({ errors: [err] });
                })
        );
};
