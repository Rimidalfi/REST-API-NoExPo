import express from "express";
import bodyParser from "body-parser";
import blogRouter from "./router/blogRouter.js"

const PORT = 8080 
const app = express();

app.listen(PORT,()=>console.log(`Server runs on: http://localhost:${PORT}`))

app.use((req,res,next)=>{
    console.log('NEW REQUEST MADE');
    console.log('path ->', req.path);
    console.log('method ->', req.method);
    next();
});
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true,}));

app.get('/',(req,res)=>{
    res.send('Home 🏠')
})

app.use('/blog',blogRouter)