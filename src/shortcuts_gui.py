import customtkinter as ctk

ctk.set_appearance_mode("Dark")
ctk.set_default_color_theme("blue")

app = ctk.CTk()
app.title("Shortcuts from Sagie")
app.geometry("500x350")
app.resizable(False, False)

# Header
header = ctk.CTkLabel(app, text="🎹 Keyboard Shortcuts", font=ctk.CTkFont(size=22, weight="bold"))
header.pack(pady=(20, 15))

# Frame for shortcuts
frame = ctk.CTkFrame(app, corner_radius=15)
frame.pack(padx=20, pady=10, fill="both", expand=True)

# List of shortcuts: (icon_text, separator, description, emoji)
shortcuts = [
    ("Alt + t", "|", "Translate selected text", "📝"),
    ("Alt + y", "|", "Search on YouTube (or open site)", "▶"),
    ("Alt + m", "|", "YouTube Music", "🎵"),
    ("Ctrl + Alt + h", "|", "Convert English → Hebrew", "🔤"),
    ("Ctrl + Alt + e", "|", "Convert Hebrew → English", "🔡"),
]

for idx, (key, sep, desc, emoji) in enumerate(shortcuts):
    # Alternate row background
    bg_color = "#1e1e1e" if idx % 2 == 0 else "#2a2a2a"
    row_frame = ctk.CTkFrame(frame, corner_radius=10, fg_color=bg_color)
    row_frame.pack(padx=10, pady=5, fill="x")

    # Separator   
    key_label = ctk.CTkLabel(row_frame, text=key, font=ctk.CTkFont(size=14, weight="bold"))
    key_label.pack(side="left", padx=(10,5))

    sep_label = ctk.CTkLabel(row_frame, text=sep, font=ctk.CTkFont(size=14))
    sep_label.pack(side="left", padx=(0,5))

    # Description
    desc_label = ctk.CTkLabel(row_frame, text=desc, font=ctk.CTkFont(size=14), anchor="w")
    desc_label.pack(side="left", padx=(0,5), fill="x", expand=True)

    # Emoji on the far right
    emoji_label = ctk.CTkLabel(row_frame, text=emoji, font=ctk.CTkFont(size=16))
    emoji_label.pack(side="right", padx=10)

close_btn = ctk.CTkButton(app, text="Close ✖", command=app.destroy, fg_color="#ff5c5c", hover_color="#ff7b7b")
close_btn.pack(pady=15)

app.mainloop()
