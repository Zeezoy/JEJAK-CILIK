import express from "express";
import { register, login, googleSignIn } from "./auth_controller.js"
import authMiddleware from "../../middleware/auth.js";

const router = express.Router();

router.post("/register", register);
router.post("/login", login);
router.post("/google", googleSignIn);

router.get("/profile", authMiddleware, (req, res) => {
    res.json({
        message: "Welcome 🔐",
        userId : req.user.id
    });
});

router.get("/", (req, res) => {
    res.send("Active 🔐");
});

export default router;
