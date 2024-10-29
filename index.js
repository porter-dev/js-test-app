const express = require('express');
const app = express();

app.use(express.static('public'));

app.get('/', (req, res) => {
    res.send('Tetris time.');
});

var sponsor = process.env.SPONSOR || "unsponsored";
app.listen(3000, () => console.log('Tetris app is listening on port 3000! Brought to you by the one & only', sponsor + ", of course."));
