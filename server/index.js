//IMPORTS FROM PACKAGES
const express = require('express');
const mongoose = require('mongoose');

// IMPORT FRPM OTHER FILES
const authRouter = require('./routes/auth');

// INIT
const PORT = 3000;
const app = express();
const DB = "mongodb+srv://osumo23:41562159@cluster0.bvcq2ze.mongodb.net/?retryWrites=true&w=majority";

//middleware
app.use(express.json());
app.use(authRouter); 


//connections
mongoose.connect(DB).then(() =>{
    console.log('connection successful');
}).catch((e)=>{
    console.log(e);
});

//GET PUT POST DELETE UPDATE
app.listen(PORT, "0.0.0.0", () =>{
    console.log(`Connected at port no: ${PORT}`);
});