import express from "express";
import {getBlog,getBlogById} from "../controller/blogController.js"

const router = express.Router();

router.get('/', getBlog);
router.get('/:id', getBlogById);


export default router

