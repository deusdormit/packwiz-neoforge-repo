# Packwiz migration

Partial migration of 217 selected outer artifacts: 190 resolved exactly through the Modrinth SHA-512 API and 27 unresolved.

Intended sides after dependency promotion: **191 both**, **22 client**, **4 server**.
Resolved metafiles: **166 both**, **21 client**, **3 server**.

## Dependency promotions

- `delightlib-26.05.18-1.21-neoforge.jar`: client → both; `moredelight-26.05.20a-1.21-neoforge.jar` requires `delightlib` on `both`.

## Unresolved selected JARs

**This pack is incomplete until all unresolved entries below are supplied.**

- `Apotheosis-1.21.1-8.5.4.jar` — intended side: `both`
- `ApothicAttributes-1.21.1-2.9.1.jar` — intended side: `both`
- `ApothicEnchanting-1.21.1-1.5.3.jar` — intended side: `both`
- `ApothicSpawners-1.21.1-1.3.4.jar` — intended side: `both`
- `ars_elemental-1.21.1-0.7.10.1.jar` — intended side: `both`
- `blockui-1.0.211-1.21.1-snapshot.jar` — intended side: `both`
- `buildinggadgets2-1.3.9.jar` — intended side: `both`
- `Colony4ComputerCraft-1.21.1-2.8.2.jar` — intended side: `both`
- `continuity-3.0.0+0.0.1+1.21.1.neoforge-all.jar` — intended side: `client`
- `coroutil-neoforge-1.21.0-1.3.9.jar` — intended side: `both`
- `create-confectionery1.21.1_v1.1.3b.jar` — intended side: `both`
- `create_colony_logistics-1.2.2.jar` — intended side: `server`
- `create_recycle_everything-1.0.1.jar` — intended side: `both`
- `domum-ornamentum-1.0.234-snapshot-main.jar` — intended side: `both`
- `ExtremeReactors2-1.21.1-2.4.28.jar` — intended side: `both`
- `FastSuite-1.21.1-6.0.7.jar` — intended side: `both`
- `minecolonies-1.1.1345-1.21.1-snapshot.jar` — intended side: `both`
- `redstone_crafting-1.0.0-neoforge-1.21.1.jar` — intended side: `both`
- `refinedstorage-jei-integration-neoforge-1.0.0.jar` — intended side: `both`
- `SereneSeasons-neoforge-1.21.1-10.1.0.3.jar` — intended side: `both`
- `StorageDrawers-neoforge-1.21.1-13.11.4.jar` — intended side: `both`
- `structurize-1.0.832-1.21.1-snapshot.jar` — intended side: `both`
- `tfmg-1.2.2.jar` — intended side: `both`
- `tfthreadsafetyaddon-0.1.3.jar` — intended side: `both`
- `toofast-1.21.0-0.4.3.6.jar` — intended side: `both`
- `twilightforest-1.21.1-4.8.3345-universal.jar` — intended side: `both`
- `ZeroCore2-1.21.1-2.4.21.jar` — intended side: `both`

## Omitted disabled files

- `DistantHorizons-2.4.5-b-1.21.1-fabric-neoforge.jar.disabled`
- `cc-tweaked-1.21.1-forge-1.113.1.jar.disabled`
- `create_colony_logistics-1.2.2.jar.disabled`
- `do_a_barrel_roll-neoforge-3.7.3+1.21 2.52.10 pm.jar.disabled`
- `fast-ip-ping-v1.0.8-mc1.21.1-neoforge.jar.disabled`

Disabled files were excluded from selection and the Packwiz index. Metadata identities came only from outer `META-INF/neoforge.mods.toml` or `META-INF/mods.toml`; nested jar-in-jar identities were ignored.
