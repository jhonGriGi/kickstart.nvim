# Atajos de Teclado — Neovim Config

> `<leader>` = `Space`

---

## General

| Atajo | Modo | Función |
|-------|------|---------|
| `<Esc>` | Normal | Limpiar highlights de búsqueda |
| `<leader>x` | Normal | Guardar y cerrar (`:wq`) |
| `<leader>bq` | Normal | Cerrar buffer (`:q`) |
| `<leader>a` | Normal | Agregar `;` al final de la línea y guardar |
| `<leader>q` | Normal | Abrir lista de diagnósticos (quickfix) |
| `<Esc><Esc>` | Terminal | Salir del modo terminal |

---

## Navegación entre ventanas

| Atajo | Función |
|-------|---------|
| `<C-h>` | Mover foco a ventana izquierda |
| `<C-l>` | Mover foco a ventana derecha |
| `<C-j>` | Mover foco a ventana inferior |
| `<C-k>` | Mover foco a ventana superior |

---

## Telescope (Búsqueda)

| Atajo | Función |
|-------|---------|
| `<leader>sh` | Buscar en ayuda (help tags) |
| `<leader>sk` | Buscar keymaps |
| `<leader>sf` | Buscar archivos |
| `<leader>ss` | Seleccionar picker de Telescope |
| `<leader>sw` | Buscar palabra bajo el cursor |
| `<leader>sg` | Buscar con grep (live grep) |
| `<leader>sd` | Buscar diagnósticos |
| `<leader>sr` | Reanudar última búsqueda |
| `<leader>s.` | Buscar archivos recientes |
| `<leader>s/` | Grep en archivos abiertos |
| `<leader>sn` | Buscar archivos de configuración de Neovim |
| `<leader><leader>` | Listar buffers abiertos |
| `<leader>/` | Búsqueda fuzzy en el buffer actual |

---

## LSP

| Atajo | Modo | Función |
|-------|------|---------|
| `grn` | Normal | Renombrar símbolo |
| `gra` | Normal / Visual | Ejecutar code action |
| `grr` | Normal | Ver referencias |
| `gri` | Normal | Ir a implementación |
| `grd` | Normal | Ir a definición |
| `grD` | Normal | Ir a declaración |
| `gO` | Normal | Símbolos del documento actual |
| `gW` | Normal | Símbolos del workspace |
| `grt` | Normal | Ir a definición de tipo |
| `<leader>th` | Normal | Toggle inlay hints |

---

## Inlay Hints (texto virtual del LSP)

Muestran tipos, nombres de parámetros y tipos de retorno directamente en el código.
Son **por buffer** — activarlos en un archivo no afecta a los demás.

**Activar / desactivar:** `<leader>th`

Configurados en los siguientes servers:

| Server | Hints activos |
|--------|---------------|
| `ts_ls` | Tipos de variables, parámetros, retornos, enums, propiedades |
| `gopls` | Tipos de variables, campos, parámetros, rangos |
| `pyright` | Tipos de variables, tipos de retorno |
| `lua_ls` | Hints generales de Lua |

> Los hints están **desactivados por defecto** al abrir un buffer.
> Usa `<leader>th` para activarlos. El estado no persiste entre sesiones.

---

## Formato

| Atajo | Modo | Función |
|-------|------|---------|
| `<leader>f` | Normal / Visual | Formatear buffer (conform.nvim) |

---

## Git (Gitsigns)

| Atajo | Modo | Función |
|-------|------|---------|
| `]c` | Normal | Ir al siguiente cambio git |
| `[c` | Normal | Ir al cambio git anterior |
| `<leader>hs` | Normal / Visual | Stage hunk |
| `<leader>hr` | Normal / Visual | Reset hunk |
| `<leader>hS` | Normal | Stage buffer completo |
| `<leader>hu` | Normal | Undo stage hunk |
| `<leader>hR` | Normal | Reset buffer completo |
| `<leader>hp` | Normal | Preview hunk |
| `<leader>hb` | Normal | Blame de la línea |
| `<leader>hd` | Normal | Diff contra index |
| `<leader>hD` | Normal | Diff contra último commit |
| `<leader>tb` | Normal | Toggle blame en línea actual |
| `<leader>tD` | Normal | Toggle mostrar líneas eliminadas |

---

## Neo-tree (Explorador de archivos)

| Atajo | Función |
|-------|---------|
| `\` | Abrir Neo-tree revelando archivo actual |
| `\` (dentro de Neo-tree) | Cerrar Neo-tree |

---

## Autocompletado (blink.cmp)

| Atajo | Función |
|-------|---------|
| `<C-y>` | Aceptar sugerencia |
| `<C-space>` | Abrir menú / mostrar docs |
| `<C-n>` / `<Down>` | Siguiente item |
| `<C-p>` / `<Up>` | Item anterior |
| `<C-e>` | Cerrar menú |
| `<C-k>` | Toggle signature help |
| `<Tab>` / `<S-Tab>` | Moverse en expansión de snippet |

---

## Mini.surround (Surroundings)

| Atajo | Función |
|-------|---------|
| `saiw)` | Rodear palabra con paréntesis |
| `sd'` | Eliminar comillas simples |
| `sr)'` | Reemplazar `)` por `'` |

## Mini.ai (Text objects)

| Atajo | Ejemplo | Función |
|-------|---------|---------|
| `va)` | | Seleccionar visualmente alrededor de `()` |
| `yinq` | | Yank dentro del siguiente quote |
| `ci'` | | Cambiar dentro de comillas simples |
