const express = require('express');
const app = express();

app.use(express.static('public'));

app.get('/', (req, res) => {
    res.send('Tetris time.');
});

var sponsor = process.env.SPONSOR || "unsponsored";
app.listen(process.env.PORT || 3000, () => console.log('Tetris app listening on port 3000! Brought to you all by the one and only ', sponsor + ", of course."));
