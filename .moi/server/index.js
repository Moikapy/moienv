'use strict';

const express = require('express');
const path = require('path');
// Constants
const PORT = 8080;

// App
const app = express();

app.use(express.static(path.join(__dirname, '/../'))).listen(PORT);
