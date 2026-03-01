import { registerUser, loginUser, loginWithGoogle } from "./auth_services.js";

export const register = async(req, res) => {
    try {
        const user = await registerUser(req.body);
        res.json({ success: true, user });
    } catch (error) {
        res.status(400).json({ success: false, message: error.message });
    }
};

export const login = async (req, res) => {
    try {
        const { user, token } = await loginUser(req.body);
        res.json({ success: true, user, token });
    } catch (err) {
        res.status(400).json({ success: false, message: err.message });
    }
};

export const googleSignIn = async (req, res) => {
    try {
        const { user, token } = await loginWithGoogle(req.body);
        res.json({ success: true, user, token });
    } catch (err) {
        res.status(400).json({ success: false, message: err.message});
    }
};