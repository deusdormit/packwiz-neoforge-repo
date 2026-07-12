# Packwiz migration

All 216 selected outer artifacts have exact Packwiz metadata:

- 189 Modrinth files, matched by SHA-512
- 27 CurseForge files, matched by CurseForge fingerprint and stored as `metadata:curseforge`
- 193 `both`, 22 `client`, and 1 `server`

Every metadata download hash matches the selected source JAR. Shared mods use the
updated client artifact. Required dependencies close successfully when bundled
JarJar dependencies are included.

## Dependency promotion

- `delightlib-26.05.18-1.21-neoforge.jar`: client → both because
  `moredelight-26.05.20a-1.21-neoforge.jar` requires `delightlib` on both sides.

## Manual-install exceptions

### CurseForge delivery

The 27 CurseForge entries require a Packwiz installer that supports
`metadata:curseforge`. Two matched files have third-party distribution disabled
and cannot be installed automatically by the stock installer. Manual installation
at their current pinned versions is accepted for this pack:

- Create: Colony Logistics — project 1466643, file 7904223
- Create Recycling Everything Neo — project 1225687, file 6383172

Place the exact JARs in `mods/` before rerunning the installer; Packwiz verifies
their SHA-1 hashes and proceeds. See `README.md` for client and server instructions.

CurseForge announced that direct CDN downloads require API-key authentication
starting July 16, 2026. This may also affect the other CurseForge-backed entries
unless Packwiz ships compatible authentication support. Never commit an API key
to this repository.

### Version note

`lmft-1.1.1+1.21.9-neoforge.jar` declares a permissive Minecraft dependency range,
and its Modrinth release explicitly supports Minecraft 1.21.1. The `1.21.9` filename
is intentional: the release changelog says one NeoForge JAR supports versions back
to 1.20.2.

## Files disabled in the updated client source

- `DistantHorizons-2.4.5-b-1.21.1-fabric-neoforge.jar.disabled`
- `cc-tweaked-1.21.1-forge-1.113.1.jar.disabled`
- `create_colony_logistics-1.2.2.jar.disabled`
- `do_a_barrel_roll-neoforge-3.7.3+1.21 2.52.10 pm.jar.disabled`
- `fast-ip-ping-v1.0.8-mc1.21.1-neoforge.jar.disabled`

The active ComputerCraft version is represented. Colony Logistics is installed on
both sides because its required network channel must exist on clients. Do a Barrel
Roll was explicitly restored to both sides. Distant Horizons was restored for its
dedicated-server mode. Fast IP Ping was removed because dedicated-server use is
unsupported.
