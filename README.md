# 🚀 Neovim Configuration (mailo17)

Το neovim config μου εμπνευσμένο απο τον Josean Martinez

## 📋 Προαπαιτούμενα (Prerequisites)

Για τη σωστή λειτουργία των plugins (LSP, Treesitter, Telescope κ.α.), πρέπει να είναι εγκατεστημένα τα παρακάτω στο σύστημά σας:

### 1. Neovim (Έκδοση 0.9.0 ή νεότερη)

- **Linux/macOS:** Χρησιμοποιήστε τον package manager της διανομής σας (π.χ. `brew install neovim` ή `sudo apt install neovim`).
- **Windows:** Μέσω winget: `winget install -e --id Neovim.Neovim`.

### 2. Βασικά Εργαλεία (System Dependencies)

- **Git:** Απαραίτητο για το κλωνοποίηση του repo και τη διαχείριση των plugins.
- **C Compiler:** (gcc/clang) Χρειάζεται για το nvim-treesitter.
- **Ripgrep (rg):** Απαραίτητο για το Telescope (αναζήτηση αρχείων).
- **FD (fd-find):** Για γρήγορη εύρεση αρχείων.
- **Make:** Για την εγκατάσταση ορισμένων plugins.

### 3. Nerd Font (Σημαντικό!)

Για να εμφανίζονται σωστά τα εικονίδια, πρέπει να εγκαταστήσετε μια **Nerd Font** (π.χ. JetBrainsMono Nerd Font) και να τη ρυθμίσετε ως γραμματοσειρά στο terminal σας.

- [Κατεβάστε εδώ](https://www.nerdfonts.com/font-downloads)

## ⚙️ Εγκατάσταση (Installation)

### Linux και macOS

Ανοίξτε το terminal και εκτελέστε τις παρακάτω εντολές:

```bash
# Αν έχετε ήδη config, κρατήστε ένα backup
mv ~/.config/nvim ~/.config/nvim.backup
mv ~/.local/share/nvim ~/.local/share/nvim.backup

# Κλωνοποίηση του repository
git clone [https://github.com/mailo17/nvim_config.git](https://github.com/mailo17/nvim_config.git) ~/.config/nvim

# Εκκίνηση του Neovim
nvim

```
