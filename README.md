# Social-Engineering-UAC-PoC
**Developed by siajkora**

---

### ⚠️ LEGAL DISCLAIMER
**FOR EDUCATIONAL PURPOSES ONLY.**
The author (**siajkora**) is **NOT responsible** for any misuse, damage, or illegal activities. This software is provided "as is" without any warranty. Use at your own risk.

---

## 📖 Overview
Open-source Proof of Concept (PoC) for obtaining **Administrator privileges** via social engineering. This tool uses **VBS**, **BAT**, and **DLL** files to simulate system prompts and escalate privileges.

- **No Python required.**
- **No dependencies.**
- Runs natively on Windows.

## 🤝 Credits
Core logic and inspiration based on research from the **Ebola Man** YouTube channel. Implemented and adapted by **siajkora**.

## 🔍 How it works
This PoC demonstrates a persistent social engineering loop:
1. A fake administrative prompt (simulated via **VBS**) pops up asking for credentials.
2. If the user clicks **"No"** or closes the window, the prompt reappears every **2 seconds**, forcing the user to interact.
3. The prompt is designed to look like an authentic **Windows System UI**.
4. Once the user clicks **"Yes"** and enters the administrator password, a **new CMD window with full Administrator privileges is launched in a minimized state**.
