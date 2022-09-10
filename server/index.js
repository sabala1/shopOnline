import express from "express";
import authRouter from "./routes/auth.js"
import mongoose from "mongoose";

const app = express();

const PORT = 3000;

const DB = "mongodb+srv://macaron:1234@cluster0.ryuyl1q.mongodb.net/shoponline?retryWrites=true&w=majority"

//middleware
app.use(express.json());
app.use(authRouter);

//connections
mongoose.connect(DB).then(() => {
    console.log("Connection Successful");
}).catch((e) => {
    console.log(e);
});

app.listen(PORT, () => {
    console.log(`connected at port ${PORT}`);
});