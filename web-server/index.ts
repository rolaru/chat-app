import express from 'express';

const app = express();

app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.listen(80, () => {
  console.log('Chat app web server started on port 80...');
})