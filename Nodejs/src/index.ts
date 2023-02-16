import express from "express";
import { lookup } from "./v1/lookup";
import { getApiMap } from "./v1/apiMap";
import { handleNoParams } from "./v1/errors/noParams";
import { resolve } from "./v1/resolve";
import { root } from "./v1/root";
import { inflect } from "./v1/inflect";

const app = express();
const port = 3030;

app.get("/", (req, res) => res.redirect("/api/v1/"));
app.get("/api/v1/", getApiMap);

// Query errors
app.get("/api/v1/lookup/", handleNoParams);
app.get("/api/v1/resolve/", handleNoParams);
app.get("/api/v1/root/", handleNoParams);
app.get("/api/v1/inflect/", handleNoParams);
// Routes
app.get("/api/v1/lookup/:query", lookup);
app.get("/api/v1/resolve/:query", resolve);
app.get("/api/v1/root/:query", root);
app.get("/api/v1/inflect/:query", inflect);

app.listen(port, () => {
  console.log(`ElixirFM API server running on port ${port}`);
});
