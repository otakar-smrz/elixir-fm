const express = require('express')
const { exec } = require('child_process');

const app = express()
const port = 3000

app.get('/', (req, res) => {
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

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})