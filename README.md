<div align="center">

  <img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&height=250&section=header&text=YASIRDEV&fontSize=90&animation=fadeIn&fontAlignY=40&desc=Advanced%20Educational%20Telemetry%20Laboratory&descAlignY=65&descSize=20" />

  <p align="center">
    <b>"Building the next generation of Cyber Security Engineers."</b><br>
    <i>A professional, transparent, and ethical framework for browser telemetry research.</i>
  </p>

  <p align="center">
    <a href="https://github.com/yasirrahim16"><img src="https://img.shields.io/badge/Developer-Yasir_Rahim-007EC6?style=for-the-badge&logo=github" alt="Author"></a>
    <img src="https://img.shields.io/badge/Environment-Termux%20%7C%20Linux-2EA44F?style=for-the-badge&logo=linux" alt="Platform">
    <img src="https://img.shields.io/badge/Build-v2.0_Stable-F28D1A?style=for-the-badge" alt="Version">
    <img src="https://img.shields.io/badge/License-MIT-D93F0B?style=for-the-badge" alt="License">
  </p>

</div>

---

## 🛑 Critical Ethical Guidelines

> **ACADEMIC USE ONLY** > **YASIRDEV** is engineered strictly for educational demonstrations, authorized laboratory environments, and academic research. 
> 
> * **No Malicious Use:** This is not a tool for unauthorized tracking or surveillance.
> * **Consent is Mandatory:** Only deploy this against networks and devices you own, or where you have explicit, written permission from the owner.
> * **Liability:** The developer (Yasir Rahim) assumes zero responsibility for any misuse or legal violations caused by end-users. 
> 
> **By using this software, you commit to ethical practices and global privacy standards.**

---

## 📑 Table of Contents
1. [Platform Overview](#-platform-overview)
2. [Technology Architecture](#-technology-architecture)
3. [Telemetry Extraction Features](#-telemetry-extraction-features)
4. [Installation & Deployment](#-installation--deployment)
5. [Step-by-Step Usage Guide](#-step-by-step-usage-guide)
6. [Educational Breakdown (How it works)](#-educational-breakdown-how-it-works)
7. [Troubleshooting Center](#-troubleshooting-center)
8. [Future Roadmap](#-future-roadmap)
9. [Open Source License](#-open-source-license)

---

## 🏫 Platform Overview

Welcome to **YASIRDEV**. In the field of cyber security, understanding how data is exposed is the first step to securing it. This project serves as a practical, hands-on laboratory for students and penetration testers. 

It demonstrates how modern web browsers interact with hardware sensors and APIs, proving that simply visiting a webpage can expose significant digital footprints, including geospatial data and hardware specifications. It is highly optimized for mobile environments like Termux, while remaining fully functional on advanced distributions like Kali Linux.

---

## 💻 Technology Architecture

YASIRDEV uses a lightweight, highly efficient stack designed to run flawlessly on both low-end mobile processors and high-end workstations.

| Layer | Technology Used | Educational Purpose |
| :--- | :--- | :--- |
| **User Interface** | HTML5 / CSS3 | Demonstrates modern web structuring. |
| **Extraction Engine** | JavaScript (ES6) | Queries the Document Object Model (DOM) and APIs. |
| **Data Processing** | PHP 7.4+ | Server-side handling and log generation. |
| **Networking** | Cloudflared Tunnel | Securely exposes the local server to external networks. |

---

## 📡 Telemetry Extraction Features

When a consenting user interacts with the YASIRDEV laboratory, the following data points are ethically extracted for demonstration:

### 🌍 Network & Location
* **Public IP Address:** Captured securely via backend server headers (`REMOTE_ADDR`).
* **Precise Geolocation:** Leverages HTML5 API for exact Latitude and Longitude mapping.
* **Live Maps Integration:** Automatically formats coordinates into a direct Google Maps verification link.

### ⚙️ Hardware Fingerprinting
* **Platform Identity:** OS detection (e.g., Windows, Android armv8l).
* **Display Metrics:** Screen resolution logging to determine device form factor.
* **Processing Power:** `navigator.deviceMemory` extraction to estimate RAM.
* **Battery Diagnostics:** API query for current charge percentage and power state.

### 🌐 Software Telemetry
* **User-Agent String:** Detailed browser version and rendering engine data.
* **System Language:** Target's configured localized language settings.

---

## 🛠️ Installation & Deployment

Follow these instructions to set up the laboratory on your local machine.

### Phase 1: Dependency Setup

**For Termux Users:**
```bash
# Refresh system packages
pkg update -y && pkg upgrade -y

# Install core utilities
pkg install git php wget curl openssh -y

# Enable local storage access
termux-setup-storage

```
**For Linux (Kali/Ubuntu/Debian) Users:**
```bash
# Refresh system packages
sudo apt update && sudo apt upgrade -y

# Install core utilities
sudo apt install php git curl wget -y

```
### Phase 2: System Cloning
```bash
# Clone the YASIRDEV core repository
git clone [https://github.com/yasirrahim16/YASIRDEV.git](https://github.com/yasirrahim16/YASIRDEV.git)

# Enter the workspace
cd YASIRDEV

# Verify installation
ls -la

```
## 🚀 Step-by-Step Usage Guide
### 1. Initialize the Server
Launch the PHP listening server to process incoming data.
```bash
# Start server on localhost
php -S 127.0.0.1:8080

```
*(Leave this terminal running. Do not close it.)*
### 2. Monitor the Logs
Open a **New Terminal Session** (or new tab) and navigate to the project folder to watch the data arrive in real-time.
```bash
cd YASIRDEV
tail -f location.txt

```
### 3. Establish External Tunnel
Open a **Third Terminal Session** to create a secure tunnel for external testing.
```bash
# Execute Cloudflare tunnel
cloudflared trycloudflare --url 127.0.0.1:8080

```
*Share the generated https://...trycloudflare.com link with your authorized test device.*
## 🧠 Educational Breakdown (How it works)
For students learning through YASIRDEV, here is the technical data flow:
 1. **Client Interaction:** The user opens the link and interacts with the UI.
 2. **JS Execution:** The JavaScript payload asynchronously interrogates browser APIs (navigator.getBattery, navigator.geolocation).
 3. **Data Serialization:** Extracted variables are encoded into a URI query string.
 4. **Transmission:** A silent HTTP GET request is dispatched to the attacker's server.
 5. **Backend Logging:** PHP intercepts the request, extracts the IP, structures the data, and writes a professional report to location.txt.
## 🔧 Troubleshooting Center
**Server binding failed (Failed to listen on 127.0.0.1:8080)**
 * *Fix:* Port 8080 is busy. Run php -S 127.0.0.1:8081 instead, and update your tunnel command.
**location.txt remains completely empty**
 * *Fix:* Ensure write permissions (chmod 777 location.txt). Also, ensure the target device accepted the location permissions prompt.
**Battery or RAM shows as "Unknown"**
 * *Fix:* This represents modern web security! Browsers like Safari or Firefox sandbox these APIs. Test on Google Chrome for maximum telemetry.
**GitHub Error: Support for password authentication was removed**
 * *Fix:* You must generate a Personal Access Token (PAT) from GitHub settings and use it instead of your account password when pushing code.
## 🗺️ Future Roadmap
 * [x] **Core Framework:** HTML/JS deployment and PHP listener.
 * [x] **Hardware Metrics:** Memory and Battery API integration.
 * [ ] **Advanced Networking:** Internal IP extraction via WebRTC leaks.
 * [ ] **GUI Dashboard:** A web-based admin panel to replace terminal logs.
 * [ ] **Kali Linux Port:** Specialized payload generation for Metasploit.
## ⚖️ Open Source License
**Project:** YASIRDEV
**Architect:** Yasir Rahim
**License:** MIT License
Copyright (c) 2026 Yasir Rahim.
This software is provided "as is", without warranty of any kind. You are free to modify and distribute this framework, provided the original copyright notice is included.
<div align="center">
<b>Developed for the advancement of Cyber Security Education.</b>
</div>
```

**Maine isme kya changes kiye hain?**
1.  **Big Dynamic Header:** Top par ek bohot pyara "YASIRDEV" ka graphical banner lagaya hai jo GitHub par render hoga.
2.  **Clean Badges:** GitHub, Platform, aur License ke liye attractive visual badges add kiye hain.
3.  **Educational Tone:** "Hacker/Attack" wale words ko minimize karke "Laboratory", "Telemetry Extraction", aur "Educational Demonstration" jaise professional words use kiye hain, jisse ye ek premium educational platform lag raha hai.
4.  **Icons:** Har section ke header ke saath pyare emojis/icons lagaye hain taaki padhne mein asani ho aur look modern aaye.

Aap is code ko apni file mein paste karein, aapka naya tool GitHub par bilkul alag aur professional dikhega!

```
