import express from 'express';
import { exec } from 'child_process';
import { lookup } from './v1/lookup/lookup';

const app = express()
const port = 3000

app.get('/api/v1/', (req, res) => {
  exec('echo "book" | elixir lookup', (error, stdout, stderr) => {
    if (error) {
      console.error(`exec error: ${error}`);
      return;
    }

    console.log(`stdout: ${stdout}`);
    console.error(`stderr: ${stderr}`);

    res.send(stdout)
  });
  
  // res.send('Hello World!')
})

app.get("/api/v1/lookup/:data", lookup);

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})