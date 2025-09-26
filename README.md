# Shortcuts
Additional keyboard shortcuts powered by AutoHotkey  

**Shortcuts Tool (by Sagie Zafrani)**

---

## 📦 Included files
- **dist/shortcuts.exe** → Global hotkeys (compiled AHK)  
- **dist/shortcuts_gui.exe** → Shortcut menu (compiled Python GUI)  
- **src/shortcuts.ahk** → AutoHotkey source code  
- **src/shortcuts_gui.py** → Python GUI source code  

---

## ⚡ Usage
1. Run **shortcuts.exe** from the `dist/` folder  
2. **Most important shortcut**:  
   - `Ctrl + Shift + `` → Opens the menu window with all shortcuts

markdown
Copy code
→ Opens the menu window with all shortcuts  
3. Other shortcuts:  
- `Alt + T` → Translate selected text into Hebrew  
- `Alt + Y` → Search on YouTube  
- `Ctrl + Alt + H` → Convert English → Hebrew  
- `Ctrl + Alt + E` → Convert Hebrew → English  

---

## 🔄 Recommendation (Auto start)
To make the tool run automatically when your computer boots:  
1. Press `Win + R`  
2. Type:  
shell:startup

yaml
Copy code
3. Create a shortcut to **shortcuts.exe** in that folder  

---

## 🛠️ Building from source (optional)
- To edit hotkeys: open `src/shortcuts.ahk` (requires AutoHotkey v2)  
- To edit the GUI: open `src/shortcuts_gui.py` (requires Python + customtkinter)  
- You can rebuild the `.exe` files using **Ahk2Exe** and **PyInstaller**  

---

## 🖼️ Screenshot
<img width="498" height="384" alt="Shortcuts GUI" src="https://github.com/user-attachments/assets/e6952357-3c7d-4169-8da6-8b9e1c29aaab" />
