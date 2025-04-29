# 🩸 Hide It - A Game Jam Project

**Hide It** is a top-down stealth-crime game where you play as a cold, calculating killer attempting to commit the perfect crime. Inspired by *Dexter*, the challenge lies not just in killing — but in hiding the evidence.

Made in **Godot Engine 4** for the "Hide It" game jam.  
Visual style: Retro 2D with stylized blood effects.  
Theme: Hide the evidence, the guilt, and yourself.

---

## 🎮 Gameplay Overview

- **Kill** your target when they are isolated.
- **Blood pools** and particles will expose your actions.
- **Clean the crime scene** before anyone sees.
- **Avoid detection** by witnesses or police patrols.
- **Failure to hide evidence** results in arrest or worse...

---

## 🎮 Controls

| Action         | Key        |
|----------------|------------|
| Move           | WASD       |
| Kill           | E          |
| Clean Evidence | also E     |
| Aim/Face       | Mouse      |

---

## ⚙️ Core Systems Implemented

- ✅ Kill mechanic with detection radius
- ✅ Blood particle splatter and pooling
- ✅ Evidence system (cleanable objects)
- ✅ Centralized HUD with dynamic prompts
- ✅ Top-down character control and camera
- ✅ Dynamic interactions via autoload singleton

---

## 🗓️ Game Jam Roadmap

### ✅ Day 1 – Core Systems
- [x] Killing + blood splatter logic
- [x] Spawn blood pool
- [x] HUD system + prompt UI
- [x] Clean-up mechanic
- [ ] Enemy placeholder AI

### ✅ Day 2 – Gameplay Loop
- [ ] Add patrol AI + detection logic
- [ ] Sound effects: kill, clean, alert
- [ ] Basic crime consequence mechanic
- [ ] Evidence timer (police arrival)

### ✅ Day 3 – Level & Polish
- [ ] Final level design + objectives
- [ ] Victory/fail conditions
- [ ] UI polish (fade, effects)
- [ ] Add music & ambient SFX
- [ ] Jam submission & page polish

---

## 🧠 Dev Notes

- Built using **Godot 4.x** and GDScript
- Uses a **singleton `UIManager`** to coordinate prompt messages
- Modular blood/evidence system for easy future expansion

---


## 🧼 License

This game is a jam entry and not licensed for commercial distribution.

---

