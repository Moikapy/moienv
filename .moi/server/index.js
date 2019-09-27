'use strict';

const express = require('express');

// Constants
const PORT = 8080;
const HOST = '0.0.0.0';

// App
const app = express();

app.use(
	express.static(path.join(__dirname, '/../public')) || express.static(path.join(__dirname,'/../))
);

app.listen(PORT);
