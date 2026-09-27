# Requisitos de instalación

Todo lo necesario para que la config funcione desde cero.

---

## 1. Dependencias del sistema

Requeridas antes de abrir nvim por primera vez.

```sh
# Arch
sudo pacman -S --needed git make unzip gcc ripgrep go clang terraform nodejs

# Ubuntu/Debian
sudo apt install git make unzip gcc ripgrep golang clangd nodejs npm
# terraform: https://developer.hashicorp.com/terraform/install
```

| Herramienta | Para qué |
|-------------|----------|
| `git` | lazy.nvim y todos los plugins |
| `make` / `gcc` | telescope-fzf-native y LuaSnip (regex support) |
| `unzip` | Mason al descomprimir binarios |
| `ripgrep` | Telescope live grep (`<leader>sg`) |
| `node` | Mason instala servers npm (ts_ls, html, css, yaml...) |
| `go` | Mason instala servers Go (gopls, sqlls, golangci-lint) |
| `clang` | clangd + detección de headers del sistema |
| `terraform` | terraformls lo requiere en PATH para funcionar |

---

## 2. pnpm (gestor de paquetes Node)

```sh
npm install -g pnpm
```

---

## 3. Dependencias globales Node

```sh
pnpm add -g typescript typescript-language-server
pnpm add -g @angular/language-server @angular/language-service
pnpm add -g yaml-language-server
pnpm add -g prettier
```

> `typescript` debe instalarse en el mismo entorno que `@angular/language-server`.

---

## 4. Dependencias globales Python

```sh
# pipx (recomendado para herramientas globales)
pip install pipx
pipx ensurepath

pipx install black
pipx install isort
pipx install yamllint
```

---

## 5. Lo que Mason instala automáticamente

Al abrir nvim por primera vez, Mason descarga e instala todo esto sin intervención:

**LSP Servers:**
`ts_ls`, `angularls`, `html`, `cssls`, `tailwindcss`, `yamlls`, `terraformls`,
`tflint`, `pyright`, `lua_ls`, `gopls`, `clangd`, `sqlls`

**Formatters:**
`prettier`, `stylua`, `black`, `isort`, `sql-formatter`

**Linters:**
`eslint-lsp`, `stylelint`, `golangci-lint`, `golangci-lint-langserver`,
`tflint`, `yamllint`, `markdownlint`

---

## 6. Orden de instalación recomendado

```sh
# 1. Dependencias del sistema
sudo pacman -S --needed git make unzip gcc ripgrep go clang terraform nodejs

# 2. pnpm
npm install -g pnpm

# 3. Node globals
pnpm add -g typescript typescript-language-server
pnpm add -g @angular/language-server @angular/language-service
pnpm add -g yaml-language-server
pnpm add -g prettier

# 4. Python globals
pip install pipx && pipx ensurepath
pipx install black && pipx install isort && pipx install yamllint

# 5. Clonar config
git clone https://github.com/<user>/nvim.git ~/.config/nvim

# 6. Abrir nvim — lazy instala plugins, Mason instala servers automáticamente
nvim
```

---

## Notas

- **`tailwindcss`**: el server solo activa en proyectos con `tailwind.config.js` o `tailwind.config.ts` en la raíz
- **`angularls`**: funciona globalmente con la instalación de pnpm; proyectos con `@angular/language-server` local tienen prioridad
- **`sqlls`**: Mason lo instala vía Go, requiere `go` en el sistema
- **`tflint`**: Mason lo instala automáticamente, no requiere instalación manual adicional
