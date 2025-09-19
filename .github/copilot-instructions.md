## Easy-MASM — AI agent working notes

Purpose: Help coding agents be productive immediately in this repo by knowing how the build/run flow works, what to edit, and common pitfalls.

Big picture
- This repo is a thin wrapper around the MASM32 toolchain using the Irvine32 library. It provides cross‑platform scripts to assemble, link, run, and clean a single .asm program.
- Source lives in `src/`. Tooling and libs (assembler, linker, Irvine32, Win32 libs) live in `lib/`. Scripts copy one `.asm` into `lib/`, build and execute there, then delete generated files.

Key files and layout
- `src/source.asm` — starter program using `INCLUDE Irvine32.inc` and `INCLUDELIB Irvine32.lib` plus Win32 libs.
- `run.bat` (Windows, PowerShell/CMD) and `run.sh` (Linux/Codespaces) — main entry points; invoked from repo root, not inside `src` or `lib`.
- `rundocker.bat` / `rundocker.sh` — run via Docker image on systems without Wine (e.g., macOS).
- `lib/` — bundled toolchain: `aml.exe` (assembler), `alink.exe` (linker), Irvine32 headers/libs and Win32 libs. Treat as opaque; do not modify or run scripts from inside this folder.
- `docs/` — user docs, platform guidance, and sample programs under `docs/sample-programs/`.

How to run (examples agents can emit)
- Windows (from repo root): `.\run source` runs `src/source.asm`. For another file, `.\run helloworld` runs `src/helloworld.asm`.
- Windows Git Bash (bash.exe): `./run.bat source` (you must include the `.bat` extension in Git Bash).
- Linux/Codespaces (Wine): `./run.sh source` or `./run.sh helloworld`. First run may be slow while Wine initializes.
- macOS or no Wine: `./rundocker.sh source` (or `.\rundocker.bat source` on Windows with Docker Desktop). This bind‑mounts `./src` into the container.

Script behavior (what the wrappers do)
- Copy `src/<name>.asm` → `lib/`, `cd lib`, run `aml.exe /c /Zd /coff <name>.asm`, link with `alink.exe /SUBSYSTEM:CONSOLE <name>.obj`, run `<name>.exe`, then delete `.exe`, `.obj`, and the copied `.asm` before returning to repo root.
- `run.sh` sets `WINEDEBUG=-all` to quiet Wine output.

Conventions and patterns
- Always place runnable `.asm` files in `src/`. Invoke scripts from repo root only.
- If using examples from elsewhere, ensure after `INCLUDELIB Irvine32.lib` you also have: `INCLUDELIB kernel32.lib` and `INCLUDELIB user32.lib` (already shown in `src/source.asm`).
- For quick debugging, use `call DumpRegs` from Irvine32 to print register state.
- Do not commit build artifacts; scripts clean after execution.

External dependencies
- Windows: none (toolchain is vendored in `lib/`).
- Linux/Codespaces: Wine must be present (Codespaces/devcontainers already handle this). See `docs/linux.md` for troubleshooting (e.g., `winecfg` on first use).
- macOS: Use Docker via `rundocker.*`. The `Dockerfile` pre‑warms Wine by running `sh run.sh source` during build.

Common pitfalls agents should avoid
- Running from `src/` or `lib/` will fail; ensure working directory is the repo root.
- Shell specifics on Windows: in CMD/PowerShell use `.\\run`, in Git Bash use `./run.bat` (don’t call `./run` without the extension).
- Antivirus can delete the just‑built `.exe` on Windows; see `docs/troubleshooting.md`.

Where to look for patterns/examples
- Minimal program: `src/source.asm` (includes Irvine32 and Win32 libs; calls `DumpRegs`).
- More examples to copy into `src/`: `docs/sample-programs/*.asm` (arithmetic, factorial, loops, I/O, arrays).

If you extend the tooling
- Keep `.bat` and `.sh` behavior equivalent (copy → build → run → clean). Update both when changing flags.
- Preserve `lib/` as the build directory to avoid path issues with the vendored tools.

Further references
- Platform‑specific tips: `docs/windows.md`, `docs/linux.md`, `docs/macos.md`, `docs/codespaces.md`, `docs/troubleshooting.md`.
