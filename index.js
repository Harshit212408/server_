const express = require('express');
require('dotenv').config();

const app = express();

app.get('/', (req, res) => {
    res.send("hello world");
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`server is running at http://localhost:${PORT}`);
});
