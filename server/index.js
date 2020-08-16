const express = require('express');
const app = express();

app.get('/ping', (req, res) => {
  res.end('pong');
})

app.listen(8000, '0.0.0.0', () => {
  console.log('running');
})
