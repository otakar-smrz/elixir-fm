import express from 'express';
import { lookup } from './v1/lookup';
import { getApiMap } from './v1/apiMap';
import { handleNoParams } from './v1/lookup/noParams';

const app = express()
const port = 3000

app.get("/", (req, res) => res.redirect("/api/v1/"));
app.get('/api/v1/', getApiMap)

app.get("/api/v1/lookup/", handleNoParams);
app.get("/api/v1/lookup/:data", lookup);

app.listen(port, () => {
  console.log(`ElixirFM API server running on port ${port}`)
})