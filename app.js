const express = require('express');

const app = express();
const port = 3000;

app.get('/', (req, res) => {
    res.json({
        message: 'Welcome to ADPList tech challenge, version 2',
        status: 'Ok'
    });
});

app.get('/health-check', (req, res) => {
    res.send('<h1>Express Demo App</h1> <h4>Message: Ok</h4>');
});

app.listen(port, () => {
    console.log(`Demo app is up and listening to port: ${port}`);
});