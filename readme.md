# My Dotfiles

A modular dotfiles deployment configuration managed via GNU Stow.

## Dependencies

Ensure the following system packages are installed before deploying:

## Quick Start Deployment Tutorial

Follow these four steps to deploy your dotfiles onto a new machine cleanly.

### Step 1: Clone the Repository
Clone your dotfiles directly into your preferred configuration path:
```bash
git clone https://github.com/akunnyaanam/dotfiles ~/.config/dotfiles
cd ~/.config/dotfiles
```

### Step 2: Set Up Your Profile
Run the `make profile` command to set up your profile:
```bash
make profile
```
This generates a `stowprofile` file listing all available packages.

### Step 3: Customize Packages (Optional)
Edit the `stowprofile` file to customize which packages are deployed.
```bash
nvim stowprofile 
```
Example: 
```bash
shell
# zed  <-- Commented out; will not be deployed
```

### Step 4: Deploy
```bash
make check  # Dry run, checking what stow doin
make link   # Deploy files to your home directory
```

## Command Reference

| Command | Action |
| :--- | :--- |
| `make profile` | Scan root directory and generate local `stowprofile` |
| `make link` | Deploy active profile configurations as symlinks to `~` |
| `make unlink` | Purge deployed symlinks cleanly from `~` |
| `make relink` | Refresh deployment state (`unlink` followed immediately by `link`) |
| `make clean` | Destructively delete physical host files or dead links blocking Stow |
| `make check` | Execute non-destructive dry run with high verbosity to preview changes |
