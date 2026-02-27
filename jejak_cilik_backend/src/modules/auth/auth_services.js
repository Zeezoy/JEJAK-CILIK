import bcrypt from "bcryptjs";
import jwt from "jsonwebtoken";
import { db } from "../../db.js";
import { users } from "./user_schema.js";
import { eq } from "drizzle-orm";

const validateRegister = ({ name, email, password }) => {
    if (!name || !email || !password) throw new Error("Name, email, and password are required");
    if (password.length < 8) throw new Error("Password must be at least 8 characters");
};

export const registerUser = async ({ name, email, password }) => {
    validateRegister({ name, email, password});

    const existing = await db
            .select()
            .from(users)
            .where(eq(users.email, email))
            .limit(1);
        if(existing.length) {
            throw new Error("Email already registered");
        }

    const hashedPassword = await bcrypt.hash(password, 10);

    const [newUser] = await db.insert(users) 
        .values({
            display_name: name,
            email,
            password: hashedPassword
    })
    .returning();

    const { password: _, ...safeUser } = newUser;

    return { user: safeUser };
};

export const loginUser = async({ email, password} ) => {
    try{
        if (!email || !password) 
        throw new Error("Email and password are required");

    const result = await db
    .select()
    .from(users)
    .where(eq(users.email, email))
    .limit(1);
    
    if(!result.length) 
        throw new Error("User Not Found");

    const user = result[0];

    const isMatch = await bcrypt.compare(password, user.password);
    if(!isMatch) 
        throw new Error("Invalid credentials");
    
    if(!process.env.JWT_SECRET){
            throw new Error("JWT_SECRET not defined");
        }

    const token = jwt.sign(
        { id: user.id},
        process.env.JWT_SECRET,
        { expiresIn: "1d" }
    );
    const { password: _, ...safeUser } = user;

    return { user: safeUser, token };
    } catch (err) {
        console.error("LOGIN ERROR:", err);
        throw err;
    }
};

    export const loginWithGoogle = async ({ googleId, email, name }) => {

        if(!googleId || !email) {
            throw new Error("Google ID and Email are required");
        }
        const existingUser = await db
            .select()
            .from(users)
            .where(eq(users.google_id, googleId))
            .limit(1);

        let user = existingUser[0];

        if(!user){
            const [newUser] = await db.insert(users)
            .values({ 
                google_id: googleId, 
                email, 
                display_name: name 
            })
            .returning();

            user = newUser;
        }

        if(!process.env.JWT_SECRET){
            throw new Error("JWT_SECRET not defined");
        }
        const token = jwt.sign({ 
            id: user.id}, process.env.JWT_SECRET, 
            { expiresIn: "1d" }
        );

        const { password: _, ...safeUser } = user;

        return { user: safeUser, token }
};
