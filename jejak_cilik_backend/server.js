import express from "express";
import dotenv from "dotenv";
import authRoutes from "./src/modules/auth/auth_routes.js";

dotenv.config();

const app = express();
app.use(express.json());

app.use("/api/auth", authRoutes);

app.get("/", (req, res) => {
    res.send("Running🚀");
});

app.listen(process.env.PORT, () => {
    console.log("Server running on port " + process.env.PORT);
});
