# Linear Mission-Based Stealth Game - Development Roadmap

This roadmap outlines **every major feature** needed to create a linear, narrative-driven stealth game where the player must commit and hide the perfect murder. The player progresses through handcrafted missions, each with increasing complexity. This list assumes you are starting from scratch.

---

## 🧱 CORE SYSTEMS

### 1. Project Setup

* ✅ Create a Godot 4 project
* ✅ Setup folder structure (`scenes/`, `scripts/`, `ui/`, `assets/`, etc.)
* ✅ Setup version control (Git)

---

## 🧍 PLAYER

### 2. Movement & Controls

* ✅ Top-down 2D movement using `CharacterBody2D`
* ✅ WASD movement with speed control
* ✅ Mouse-based look direction (character faces cursor)
* ✅ Footstep sound system (optional, planned)

### 3. Kill System

* ✅ Define a kill range using `Area2D`
* ✅ Implement interaction key to kill (`E`)
* ✅ Animate or trigger the kill visually (currently functional)
* ✅ Trigger blood particles & instantiate blood pool at victim's location
* ✅ Make UI prompt appear when near a valid target

### 4. Body Dragging System

* ⏳ Enable player to attach/detach a corpse with a key
* ⏳ Corpse follows player while dragging
* ⏳ Prevent dragging through walls/obstacles

### 5. Cleaning System

* ✅ Create cleanable blood/evidence with Area2D
* ✅ UI prompt appears when player is near blood
* ✅ Hold button (or mash) to clean blood
* ✅ Blood object is removed after cleaning

---

## 🧠 ENEMY AI

### 6. Basic State Machine

* ✅ Create enemy with states: `PATROLLING`, `ALERT`, `CHASING`, `RETURNING`
* ✅ Use waypoints to patrol a path

### 7. Alert System

* ⏳ When evidence is found or player seen, enemy enters `ALERT` state
* ⏳ Moves to last known location or evidence
* ⏳ Searches area briefly, then returns to patrol

### 8. Line of Sight

* ⏳ Use raycasts or `VisibilityNotifier2D` to detect player
* ⏳ Only trigger chase if player is in direct line of sight
* ⏳ Optional: vision cone visuals

### 9. Chase State

* ⏳ Enemy chases player if seen
* ⏳ Add game-over if player is caught
* ⏳ After losing sight, enemy becomes alert and returns

---

## 🩸 EVIDENCE SYSTEM

### 10. Blood Pool

* ✅ Instantiate `bloodPool` on kill
* ✅ Blood must be cleaned to avoid suspicion
* ⏳ Blood can trigger alert if seen by AI

### 11. Fingerprints/Objects (Optional)

* ⏳ Add interactable props (weapons, tools)
* ⏳ If left behind, raise suspicion

---

## 🧩 LEVEL DESIGN SYSTEMS

### 12. Scene Setup

* ✅ Create modular level with rooms, walls, and interactables
* ✅ Add doors (locked/unlocked)
* ⏳ Add cover objects (optional)

### 13. Victims/NPCs

* ✅ Victim node group with killable scripts
* ⏳ Civilians react (run, scream, or report)

### 14. Win Conditions

* ⏳ Objective complete after killing target + cleaning + escaping
* ⏳ Failure if caught or suspicion threshold exceeded

---

## 🎨 UI SYSTEMS

### 15. Kill/Interact Prompt

* ✅ Prompt shows when in range of target or evidence

### 16. Suspicion Meter

* ⏳ UI element showing current suspicion
* ⏳ Increases with visible blood, evidence, or being seen

### 17. Game Over/Success Screen

* ⏳ Simple scene to show win/loss and retry option

### 18. Pause Menu

* ⏳ Basic pause screen with resume/restart/quit

---

## 🔊 AUDIO/VISUAL POLISH

### 19. SFX

* ⏳ Footsteps
* ✅ Kill sound
* ✅ Blood splatter
* ⏳ UI sounds
* ⏳ Ambient sound for tension

### 20. Particles

* ✅ Blood splatter (one-shot)
* ✅ Blood pool stain decal
* ⏳ Cleaning effect (fading blood)

### 21. Lighting

* ⏳ Optional: 2D lights and shadows
* ⏳ Darkness mechanics to aid stealth

---

## 📖 NARRATIVE STRUCTURE

### 22. Mission System

* ⏳ Menu screen to select mission (even if linear)
* ✅ Each mission is a separate scene

### 23. Optional Dialogue

* ⏳ Internal monologue (Dexter-style)
* ⏳ Voiceover or text narration between levels

---

## 🧪 DEBUG TOOLS (Optional but helpful)

* ⏳ Toggle AI vision areas
* ⏳ Show alert state in debug view
* ✅ Restart level instantly (debug shortcut)

---

## 🚀 FINAL POLISH

* ⏳ Title screen
* ⏳ Credits
* ⏳ Export settings for release
