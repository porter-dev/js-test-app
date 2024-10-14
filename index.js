const express = require('express');
const app = express();

app.use(express.static('public'));

app.get('/', (req, res) => {
    res.send('Tetris time.');
});

var sponsor = process.env.SPONSOR || "unsponsoredd";
app.listen(3000, () => console.log('Tetris app is listening on port 3000! Brought to you by the one and only', sponsor + ", of course."));
