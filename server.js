const express = require('express');
const app = express();
const PORT = 3000;

app.get('/', (req, res) => {
  res.send('<h1>Bhai, Node.js App Docker mein chal rahi hai! 🚀</h1>');
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
