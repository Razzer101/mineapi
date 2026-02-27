-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Vært: localhost:3306
-- Genereringstid: 27. 02 2026 kl. 12:01:44
-- Serverversion: 5.7.24
-- PHP-version: 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mineapi`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `entity_tags`
--

CREATE TABLE `entity_tags` (
  `id` int(11) NOT NULL,
  `tag` varchar(100) NOT NULL,
  `info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `entity_tags`
--

INSERT INTO `entity_tags` (`id`, `tag`, `info`) VALUES
(1, 'accepts_iron_golem_gift', 'Entities in this tag can have poppies placed onto their head by iron golems.'),
(2, 'aquatic', 'Contains all aquatic mobs. Unused in vanilla aside from being used in other tags.'),
(3, 'arrows', 'Entities in this tag are affected by the Power and Punch enchantments.'),
(4, 'arthropod', 'Contains all arthropod mobs. Unused in vanilla aside from being used in other tags.'),
(5, 'axolotl_always_hostiles', 'Axolotls are always hostile toward entities in this tag.'),
(6, 'axolotl_hunt_targets', 'Axolotls exhibit the cooldown-based \"hunt\" behavior toward entities in this tag.'),
(7, 'beehive_inhabitors', 'Entities in this tag can be in beehives.'),
(8, 'boat', 'Used by the advancement \"Whatever Floats Your Goat!\".'),
(9, 'burn_in_daylight', 'Entities in this tag burn in direct sunlight. Wither skeletons remain unaffected due to being immune to fire.'),
(10, 'can_breathe_under_water', 'Entities in this tag cannot drown underwater.'),
(11, 'can_equip_harness', 'Entities in this tag can be equipped with a harness.'),
(12, 'can_equip_saddle', 'Entities in this tag can be equipped with a saddle.'),
(13, 'can_float_while_ridden', 'Entities in this tag can float in water while being ridden by a player.'),
(14, 'can_turn_in_boats', 'Entities in this tag are not forced to face forward in boats.'),
(15, 'can_wear_horse_armor', 'Entities in this tag can be equipped with horse armor in their body slot.'),
(16, 'can_wear_nautilus_armor', 'Entities in this tag can be equipped with nautilus armor in their body slot.'),
(17, 'candidate_for_iron_golem_gift', 'Iron golems will offer poppies to entities in this tag.'),
(18, 'cannot_be_age_locked', 'Baby variants of entities in this tag cannot be permanently set to a baby using a golden dandelion.'),
(19, 'cannot_be_pushed_onto_boats', 'Entities in this tag will not automatically enter boats when nearby enough.'),
(20, 'deflects_projectiles', 'Projectiles bounce off entities in this tag.'),
(21, 'dismounts_underwater', 'Entities in this tag will force their riders to dismount when fully submerged.'),
(22, 'fall_damage_immune', 'Entities in this tag cannot take fall damage.'),
(23, 'followable_friendly_mobs', 'Adults of entities in this tag will be followed by ghastlings.'),
(24, 'freeze_hurts_extra_types', 'Entities in this tag take 5x more damage from the freezing effect.'),
(25, 'freeze_immune_entity_types', 'Entities in this tag cannot be frozen.'),
(26, 'frog_food', 'Entities in this tag are eaten by frogs.'),
(27, 'ignores_poison_and_regen', 'For entities that cannot be affected by Poison and Regeneration effects.'),
(28, 'illager', 'Contains all illager mobs. Unused in vanilla aside from being used in other tags.'),
(29, 'illager_friends', 'Illagers consider entities in this tag to be allies, unless on a different team.'),
(30, 'immune_to_infested', 'Entities in this tag cannot be afflicted with the Infested effect.'),
(31, 'immune_to_oozing', 'Entities in this tag cannot be afflicted with the Oozing effect.'),
(32, 'impact_projectiles', 'Entities in this tag can break chorus flowers and decorated pots when hit, provided they are capable of activating targets.'),
(33, 'inverted_healing_and_harm', 'Entities in this tag are healed by Instant Damage and harmed by Instant Health.'),
(34, 'nautilus_hostiles', 'Nautiluses and zombie nautiluses are hostile to entities in this tag.'),
(35, 'no_anger_from_wind_charge', 'Entities in this tag do not retaliate if damaged by a wind charge.'),
(36, 'non_controlling_rider', 'Entities in this tag do not override the AI of entities they are riding.'),
(37, 'not_scary_for_pufferfish', 'Entities in this tag do not cause nearby pufferfish to inflate.'),
(38, 'powder_snow_walkable_mobs', 'Entities in this tag can walk on top of powder snow without sinking.'),
(39, 'raiders', 'Entities in this tag gain the Glowing effect when a bell is rung, and do not override a ravager\'s AI when riding one.'),
(40, 'redirectable_projectile', 'Projectile entities in this tag get reflected by left clicking them.'),
(41, 'sensitive_to_bane_of_arthropods', 'Entities in this tag are affected by the Bane of Arthropods enchantment.'),
(42, 'sensitive_to_impaling', 'Entities in this tag are affected by the Impaling enchantment.'),
(43, 'sensitive_to_smite', 'Entities in this tag are affected by the Smite enchantment.'),
(44, 'skeletons', 'Used in the \'entities/creeper.json\' loot table to determine whether a music disc should drop.'),
(45, 'undead', 'Armadillos roll up if entities in this tag are nearby.'),
(46, 'wither_friends', 'Entities in this tag are not targeted by and cannot hurt withers.'),
(47, 'zombies', 'Contains all zombie mobs. Unused in vanilla aside from being used in other tags.');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `mobs`
--

CREATE TABLE `mobs` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `nature` int(11) NOT NULL,
  `spawning` text NOT NULL,
  `general_behavior` text NOT NULL,
  `drops` text NOT NULL,
  `version_release` varchar(10) NOT NULL,
  `release_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `mobs`
--

INSERT INTO `mobs` (`id`, `name`, `nature`, `spawning`, `general_behavior`, `drops`, `version_release`, `release_date`) VALUES
(1, 'Zombie', 3, 'Zombies may spawn in the Overworld in groups of four in Java Edition or in groups of 2-4 in Bedrock Edition above solid blocks in a light level of 0, except in mushroom fields and deep dark biomes. In Bedrock Edition, zombies also do not spawn in rivers, frozen rivers, and snowy plains. All zombie variants (including babies) require a 2-block tall space to spawn.', 'Zombies pursue the player on sight from 35 blocks away, raising their arms up higher in Java Edition. The detection range of zombies is reduced to half of their normal range (17.5 blocks) while the player wears a zombie head. In Java Edition, if a zombie sees a player and a villager together, the zombie prefers to attack the player, and continues chasing the player while ignoring other villagers. In Bedrock Edition, zombies prioritize the nearest player, villager, or golem.', 'Rotten Flesh, Iron Ingot, Carrot, Potato, Baked Potato, Red Mushroom, Zombie Head, Music Disc Lava Chicken', '0.24', '2009-09-01'),
(2, 'Skeleton', 3, 'Skeletons may spawn in the Overworld in groups of four‌[Java Edition only] or 1-2‌[Bedrock Edition only] above solid blocks at a light level of 0, except in mushroom fields, deep dark biomes, and naturally in trial chambers.', 'Skeletons chase players, baby turtles, and iron golems they see within 16 blocks, climbing stairs or ladders, navigating mazes and traversing other complex obstacles to get within shooting range. Despite being associated to iron golems, villagers and wandering traders are ignored by skeletons. However, a skeleton can retaliate if a firework rocket set by a villager hits it.\r\n\r\nWhen within 15 blocks of a target, with a clear line of sight, a skeleton starts shooting arrows, once every 3 seconds on Easy and Normal difficulties or once every 2 seconds on Hard difficulty. If the player leaves the 15-block radius, skeletons wait for some seconds with the bow charged, shooting the moment the player comes within range again. Their detection range is reduced by 50% if a skeleton skull is worn by the player. This stacks with sneaking and the Invisibility effect.\r\n\r\nSkeleton shooting\r\nAn idle skeleton and a skeleton shooting.\r\nThe skeleton\'s accuracy is based on the world difficulty. Skeletons have an \"error\" of 10 on Easy, 6 on Normal and 2 on Hard. This is compared to the player\'s lack of accuracy of 1. To account for gravity, skeletons aim 0.2 blocks higher for every horizontal block of range to the target.\r\n\r\nSkeletons have infinite durability on their bows, and can shoot an infinite amount of arrows. Arrows shot by skeletons cannot be picked up from the ground.', 'Bone, Arrow, Skeleton Skull', '0.24', '2009-09-01'),
(3, 'Allay', 1, 'Allays have a 50% chance of spawning in dark oak cages near pillager outposts in groups of 1-3. Allays also have a 50% chance to spawn inside jail cells within woodland mansions in groups of 1-3.', 'The allay is small, peaceful, and flies aimlessly until a player gives it an item with their use key. The allay starts following the player and seeks out dropped versions of the same item to deliver them to the player. The allay returns to wandering around if any player takes its item back by using an empty hand on it.', 'Upon death, allays drop the item they are holding. Besides this, allays drop no other items or experience.', '1.19', '2022-06-07'),
(4, 'Armadillo', 1, 'Armadillos spawn in groups of two to three ‌[Java Edition only] or four ‌[Bedrock Edition only] in savannas, savanna plateaus, and windswept savannas and in groups of one to two in badlands, eroded badlands, and wooded badlands. They spawn at a light level of 9 or more In Java Edition and a light level of 7 or more In Bedrock Edition.', 'An armadillo can hide in its shell when it is hurt, confronted by undead, or confronted by players who are sprinting or riding anything. When an armadillo is rolled up it does not walk, cannot eat, and is not tempted by food. While rolled up, it takes a reduced amount of damage given by (original damage-1)/2, damage belonging to the type self_destruct is not affected by this in Bedrock Edition. The armadillo occasionally peeks out from its shell to see if a threat is still near. It unrolls if it detects no threats for 3 seconds (60 ticks). It also unrolls immediately if it comes into contact with water or is attached to a lead. An armadillo does not roll up while fleeing, in water, on fire, in the air, or being led.', 'Armadillos drop 1 armadillo scute every 5–10 minutes, similar to the rate at which chickens lay eggs.', '1.20.5', '2024-04-23'),
(5, 'Axolotl', 1, 'Axolotls spawn underwater in the lush caves biome and when there is a clay block less than five blocks below the spawning space.', 'Axolotls are passive toward players, can be attached to leads, and follow players holding a bucket of tropical fish on either the main hand or the off-hand. When a player kills a mob that is in combat with one or more axolotls, axolotls remove Mining Fatigue from the player, and give the player Regeneration I for 100 game ticks (5 seconds) per axolotl in the fight, up to a duration of 2400 game ticks (2 minutes) in Java Edition, and uncapped in Bedrock Edition.', 'Axolotls drop nothing when killed besides 1 experience when killed by a player or a tamed wolf.', '1.17', '2021-06-08'),
(6, 'Bat', 1, 'Bats can spawn in groups of 8‌[JE only] or 2‌[BE only] in the Overworld at a light level of 3 or less at any y-level, on blocks of stone, granite, diorite, andesite, tuff, or deepslate that are not directly exposed to the sky. They also need at least 1.5 air blocks (with for instance, a top trapdoor or top slab in the block above foot level). They can spawn in any Overworld biome except the deep dark.', 'Bats often fly around aimlessly, squeaking randomly. Their flight pattern tends to favor the east, and sometimes they may fly into lava and catch on fire.', 'Bats do not drop any items or experience upon death.', '1.4.2', '2012-10-25'),
(7, 'Camel', 1, 'One camel spawns in the center of each desert village during world generation. They can also spawn uncommonly in deserts in any light level‌[Java Edition only] or a light level of 7 and below‌[Bedrock Edition only]', 'A camel wanders aimlessly, avoiding hazards and obstacles, and occasionally sits for two to seven seconds before standing up again. In Bedrock Edition, camels get up immediately once the player rides them with a saddle while sitting; in Java Edition, they get up once the player moves forwards. Camels immediately flee after being harmed, even when sitting. A sitting camel cannot be pushed by players or mobs. Sitting camels do not stand up if there are solid blocks above them, as doing so would inflict suffocation damage.', '1–3XP experience orbs drop when camels are killed by a player or tamed wolf‌[BE only]. A saddle is dropped if the camel was already equipped with one. Killing a baby camel yields neither items nor experience.', '1.20', '2023-06-07'),
(8, 'Camel Husk', 3, 'In Java Edition, when a husk spawns naturally and spawns in a space that does not block the collision box required for a camel husk, it has a 10% chance to spawn as a camel husk jockey, i.e. riding a camel husk, and spawning a parched as the second passenger. Within a spawning pack of husks, only one of them can spawn as a camel husk jockey. If the husk is a baby husk and was supposed to spawn as chicken jockey, the chicken will be spawned (and can despawn), but the baby husk will ride the camel husk.', 'Camel husks spawn as hostile mobs due to being ridden by hostile mobs, targeting the player as its pathfinding is controlled by the riders. However, they will become passive once the riders are killed, behaving similarly to regular camels, but cannot breed. They are under two other different categories, monster and undead, rather than just animal for regular camels. In Bedrock Edition, camel husks get up immediately once the player rides them with a saddle while sitting; in Java Edition, they get up once the player moves forwards.', 'Rotten Flesh', '1.21.11', '2025-12-09'),
(9, 'Cat', 1, 'In Java Edition, cats can spawn every 1200 ticks (1 minute). A random player is selected (including spectators) and a random location is chosen 8-32 blocks away from the player horizontally in both directions and at the same height. If that chosen block is less than 2 chunks from a village with fewer than 5 cats, or inside a swamp hut, then a cat can spawn.', 'A stray cat is an untamed cat. Naturally spawned cats always spawn as stray cats. Unlike untamed wolves, stray cats may despawn naturally. They pursue and attack rabbits and baby turtles they see within 15 blocks. Similar to ocelots, they sneak and stalk their prey until they are within 4 blocks, then chase it down. Even though they spawn in villages, they don\'t necessarily remain there; instead, they explore.', 'String', '1.2.1', '2012-03-01'),
(10, 'Chicken', 1, 'Chickens spawn naturally in the Overworld in most grassy biomes except snowy plains, meadows, cherry groves, mangrove swamps, and pale gardens.', 'A chicken normally wanders aimlessly when idle. Sometimes they remain in a small area, even if it\'s just a 1 block space. They follow players holding various seeds within a 6×4×6 cubic area. Chicks follow adult chickens.', 'Raw Chicken, Cooked Chicken, Feather', '1.0.14', '2010-07-30'),
(11, 'Cod', 1, 'Cod spawn underwater in normal, cold, and lukewarm oceans, and their deep variants, in groups of 3-6, subject to fish spawning requirements.', 'Cod tend to swim in schools with a maximum of 9 cod per school.', 'Raw Cod, Cooked Cod, Bone Meal', '1.13', '2018-07-18'),
(12, 'Copper Golem', 1, 'A copper golem is created by placing a block of copper of any oxidation stage, then placing a carved pumpkin or jack o’lantern on top. The pumpkin must be placed last, whether by the player, a dispenser, or an enderman. The building pattern also works horizontally or upside-down, as long as the pumpkin is the final block placed.', 'When idle, copper golems wander aimlessly while avoiding obstacles and environmental hazards. Copper golems can also open and close non-iron doors. They occasionally spin their heads or stare at players. They are completely passive to players and other mobs, and run around in a panic if attacked. Unlike most other passive mobs, copper golems do not suspend their behavior when more than 32 blocks from a player.', 'Copper Ingot', '1.21.9', '2025-09-30'),
(13, 'Cow', 1, 'Cows spawn naturally in the Overworld in most grassy biomes except for snowy plains, meadows, cherry groves, mangrove swamps, and pale gardens. They spawn in small herds, with a set spawn rate for each biome.', 'A cow moos and huffs occasionally while wandering aimlessly, but tends to stay in well lit and grassy places. They avoid water unless following a player and always avoid rails and falls that cause damage. If harmed, the cow flees for a few seconds.', 'Raw Beef, Steak, Leather', '1.0.8', '2010-07-19'),
(14, 'Donkey', 1, 'In Java Edition, donkeys spawn commonly in meadows in groups of 1-2, and less commonly in plains in groups of 1-3 and savannas individually. 20% of all individual donkeys naturally spawn as babies. All donkeys spawn as adults when using spawn eggs, unless the spawn egg is used on a donkey.', 'Donkeys roam around idly, occasionally stopping to rear, swish their tails, or lower their heads as though eating the grass. Unlike sheep, the eating animation does not actually cause any grass to be consumed. A donkey may turn to look at a player who comes near. Any donkey, even a wild one, allows itself to be attached to a lead without protest. However, if the player attempts to saddle an untamed donkey, it rears and flails its front hooves. Donkeys remain passive, even when hit.', 'Leather', '1.6.1', '2013-07-01'),
(15, 'Frog', 1, 'Frogs spawn in groups of two to five in swamp and mangrove swamp biomes.', 'On land, frogs slowly wander, jumping at random. They can jump up to 8 blocks high and take 5HP less damage from falling than most other mobs. They prefer jumping on lily pads and big dripleaves, and usually jump to places that are higher up.', 'Frogs drop 1–3XP when killed by a player or tamed wolf.', '1.19', '2022-06-07'),
(16, 'Glow Squid', 1, 'In Java Edition, schools of 4 to 6 glow squid spawn in water (source block or flowing) in complete darkness in the Overworld below layer 30, except for the deep dark biome. Unlike most other aquatic mobs, they do not require water or waterlogged blocks above or below their spawning space. In all spawnable biomes, the spawn weight is 10⁄10 and the spawn chance is 100%.', 'Glow squid are passive toward the player. They are not attracted to light and do not deliberately interact with the player. Glow squid sometimes beach themselves[2] and suffocate on the banks of rivers and occasionally on ocean beaches. These behaviors are shared with the traditional squid.', 'Glow Ink Sac', '1.17', '2021-04-14'),
(17, 'Happy Ghast', 1, 'Happy ghasts can be spawned by waterlogging a dried ghast for about 20 minutes. The block will transform into a ghastling. The ghastling cannot be harnessed or ridden until fully grown. Feeding it snowballs accelerates its growth. Unlike most other mobs that can be fed, happy ghasts cannot be bred.', 'Unharnessed happy ghasts roam within a 64-block radius of their home, while harnessed happy ghasts and ghastlings roam within a 32-block radius of their home.', 'Happy ghasts drop their equipped harness on death, if any, plus 1–3XP experience orbs when killed by a player or tamed wolf. Killing a ghastling yields no experience.', '1.21.6', '2025-06-17'),
(18, 'Horse', 1, 'Horses spawn in plains and savannas in herds of 2–6. For horses, all combinations of color and markings are equally likely. All members of the herd have the same color, but markings may vary. 20% of all individual horses spawn as babies. In Java Edition, all individual horses spawn as adults when using spawn eggs.', 'Horses wander aimlessly, occasionally stopping to rear, flick their tails, or lower their heads as though eating the grass. Unlike sheep, the eating animation does not actually cause any grass to be consumed. If a player comes near, the horses may turn to look at them. Any horse, even a wild or undead horse, can be attached to a lead without protest. Horses remain passive, even when hit.', 'Leather', '1.6.1', '2013-07-01'),
(19, 'Mooshroom', 1, 'Red mooshrooms can spawn in mushroom fields biomes in herds of 4–8 on mycelium blocks. They do not naturally spawn in any other biome.', 'Mooshrooms have the same AI behavior as cows: they walk around slowly and aimlessly, huffing and mooing occasionally. They avoid danger such as cliffs, fire, or lava, but make no attempt to stay out of water.', 'Raw Beef, Steak, Leather', '1.0.0', '2011-11-18'),
(20, 'Mule', 1, 'Mules do not spawn naturally, but a mule can spawn through cross-breeding a horse with a donkey. Mules cannot breed with other mules.', 'Similar to horses and donkeys, mules roam idly, occasionally stopping to rear, swish their tails, or lower their heads as though eating the grass. Unlike sheep, the eating animation does not actually cause any grass to be consumed. Mules turn to look at any player that comes near. Any mule, even a wild one, may be attached to a lead. However, if the player attempts to saddle an untamed mule, it rears and flails its front hooves.', 'Leather', '1.6.1', '2013-07-01'),
(21, 'Ocelot', 1, 'Ocelots spawn above grass blocks in jungle biomes at the world\'s sea level (Y-level 63 per default). Ocelots spawn in groups of 1-3‌[JE only] or 1-2‌[BE only] adult ocelots 95% of the time or as babies 5% of the time. There is a small chance for two baby ocelots to spawn when an adult ocelot spawns naturally. Ocelots can spawn at a light level of 7 and above and are found in all kinds of jungle biomes in Bedrock Edition. In Java Edition, ocelots spawn as part of the \"monster\" group; as a counterbalance, there is a 1⁄3 chance for a spawn attempt to fail in jungles and spawning does not occur in bamboo jungles or sparse jungles. Because of this, while ocelots are passive animal mobs, they cannot spawn at all on Peaceful difficulty.[1] Even though ocelots spawn as part of the \"hostile\" mob cap, they are not restricted to spawn within 128 blocks of the player, but will spawn like passive mobs in chunks close to the player.', 'Ocelots are immune to fall damage, but still avoid falls. Similar to foxes, ocelots attack chickens and baby turtles they see within 15 blocks. Like cats, they sneak and stalk their prey until they are within 4 blocks, then chase it down. They can kill through a fence, fence gate, or door if they are against it.', 'Adult ocelots drop 1–3XP experience orbs when killed by a player or tamed wolf. Killing a baby ocelot yields no experience.', '1.2.1', '2012-03-01'),
(22, 'Parrot', 1, 'Parrots naturally spawn in groups of 1–2 in jungles, bamboo jungles, and sparse jungles‌[BE only] above logs, leaves, grass blocks, or air.', 'Parrots fly around idly under normal circumstances, landing frequently to rest.[1] They take interest in any nearby mobs, including those that are hostile to them, and follow them around closely. When attacked, they rapidly fly upward several blocks to flee.', 'Feather', '1.12', '2017-06-07'),
(23, 'Pig', 1, 'Pigs spawn in the Overworld in most grassy biomes except for snowy plains, meadows, mangrove swamps, and pale gardens.\n\n', 'Pigs roam the Overworld avoiding hazards and harmful falls. A pig flees for a short time when harmed.', 'Raw Porkchop, Cooked Porkchop', '0.24', '2009-09-01'),
(24, 'Rabbit', 1, 'Rabbits spawn above grass, snow blocks or sand in specific biomes. They spawn in small groups of 1 adult and 1–2 babies.​', 'Rabbits hop around aimlessly instead of walking. They can jump up to almost 2 blocks in height. They slowly approach players holding carrots, golden carrots or dandelions within 8 blocks. They do not follow players holding a carrot on a stick.[1] Rabbits also jump off of cliffs to reach carrots but do not go into lava for them. They randomly flee around if attacked.', 'Rabbit Hide, Raw Rabbit, Cooked Rabbit, Rabbit\'s Foot', '1.8', '2014-09-02'),
(25, 'Salmon', 1, 'Salmon spawn in small, normal, and large sizes. 31.6% spawn as small, 52.6% spawn as normal, and 15.8% spawn as large.', 'They can swim up approximately 4–5 blocks in waterfalls, emulating the behavior of real-world salmon that leap into and over small waterfalls to reach their spawning ground.', 'Raw Salmon, Cooked Salmon, Bone Meal', '1.13', '2018-07-18'),
(26, 'Sheep', 1, 'The sheep color is determined by the type of biome the sheep spawns in.', 'Sheep wander aimlessly and individually or in small flocks of two to four. Sheep avoid cliffs and hazardous areas if it warrants damage. Sheep emit hoarse bleats in mostly random patterns and especially when attacked. If harmed, sheep flee for a few seconds, but make no special attempt to avoid wolves.', 'Raw Mutto, Cooked Mutton, Wool', '0.28', '2009-10-27'),
(27, 'Sniffer', 1, 'Sniffers spawn by hatching from sniffer eggs, which can be found in suspicious sand from warm ocean ruins. Sniffers cannot spawn naturally. Breeding sniffers with torchflower seeds can also result in a sniffer egg being laid as an item.', 'Sniffers wander aimlessly, avoiding hazards and obstacles. They occasionally smell their surroundings and track ancient seeds by pressing their nose to the ground. When they find a seed, they sploot[2] and use their noses to dig into the ground until they get torchflower seeds or a pitcher pod, with an equal chance of digging up either one.', 'When killed, adult sniffers drop 1–3XP experience points if it was killed by a player or a tamed wolf. Snifflets, just like other baby animals, do not drop any experience points.', '1.20', '2022-10-15'),
(28, 'Snow Golem', 1, 'Snow golems are created by stacking two snow blocks vertically, and then placing a carved pumpkin or jack o\'lantern on top of the stack. The pumpkin may be placed by the player, a dispenser, or an enderman.[1] Snow golems cannot be made by pistons. The building pattern also works when arranged sideways or upside-down, as long as the pumpkin is the last block placed.', 'Snow golems wander aimlessly and try to avoid water, obstacles, and environmental hazards, but are immune to damage from powder snow. They are also immune to fall damage.', 'Snowball', '1.0', '2011-11-18'),
(29, 'Squid', 1, 'In Java Edition, 2 to 4 squid can spawn in water or waterlogged block from Y-level 50 to 63 (inclusive), as long as the biome is a river or ocean variant. The block above must also be water, and the block below must be water or waterlogged.[s 1] Squid share the water creature mob cap with dolphins and nautiluses.', 'Squid are passive toward the player. They are not attracted to light and do not deliberately interact with the player. Squid sometimes beach themselves and suffocate on the banks of rivers and occasionally on ocean beaches. These behaviors are shared with the glow squid.', 'Ink Sac', '1.2', '2011-01-13'),
(30, 'Strider', 1, 'Striders can spawn in every Nether biome. Groups of 2 to 4 striders spawn on spaces of lava that have an air block above. In Java Edition, striders are the only passive mob in the Nether, so spawning attempts are made every 400 game ticks. In Bedrock Edition, striders share the animal population cap with hoglins, and their spawn rate depends on the biome, being impacted by the ability of other mobs to spawn at a given coordinate.', 'Upon being harmed by another mob, striders attempt to flee for a few seconds while making \"retreat\" noises.', 'String', '1.16', '2020-06-23'),
(31, 'Tadpole', 1, 'Tadpoles hatch from frogspawn in groups of 2-5.', 'Tadpoles swim aimlessly in water. On land, they flop around like fish and seek out nearest water. They die in less than 20 seconds after being out of water.', 'As with other baby animals, tadpoles do not drop any items or experience on death.', '1.19', '2021-10-16'),
(32, 'Tropical Fish', 1, 'In Java Edition, random varieties of tropical fish spawn in groups of 8 in lukewarm or warm oceans (as well as their deep variants) and mangrove swamps at Y-level 50 to 63, and in lush caves in aquifers at any Y-level. They are subject to fish spawning requirements.', 'Tropical fish tend to swim in schools of fish with a maximum of 7 tropical fish per school. Tropical fish are also able to go against the water flow.', 'Tropical Fish, Bone Meal', '1.13', '2018-07-18'),
(33, 'Turtle', 1, 'Turtles occasionally spawn in small groups on the sand in beaches, but not in snowy beaches or stony shores.', 'Turtles can move around slowly on land and swim at a fast speed in water. Like other passive mobs, they move around aimlessly and flee when attacked. When on land, they generally attempt to move to the nearest water source that is at least 2 blocks deep, regardless if player made or natural. When in an enclosed area, such as a player-made enclosure, they generally swim in circles if the water is in the area, and rarely go on land to explore, if there is any.', 'Seagrass, Bowl', '1.13', '2018-07-18'),
(34, 'Villager', 1, 'Villagers can be found in villages, which spawn in several biomes such as plains, snowy plains, savannas, deserts, taigas, and snowy taigas‌[Bedrock Edition only] and can cut into other biomes such as swamps and jungles. When the village is generated, unemployed villagers spawn in them, the number of which depends on the buildings in that village, as some buildings generate villagers inside and some do not.', 'Nitwit and unemployed villagers leave their homes at day and begin to explore the village. Generally, they wander inside the village during the day. They may go indoors or outdoors, periodically making mumbling sounds. Occasionally, two villagers may stop and turn to look at each other, in a behavior called socializing, during which they stare at another villager for 4–5 seconds at a time. They continuously stare at a nearby player unless the villager is trying to get into a house at night, farm food, work, or flee from a zombie or illager.', 'Farmers using bone meal when farming have an 8.5% chance to drop it when killed by a player or tamed wolf. Each level of Looting increases the chance by 1% per level. Adult[2] villagers can drop armor equipped through dispensers. Otherwise, a villager, whether it is an adult or a baby, does not drop any items or experience when killed.', '1.14', '2019-04-23'),
(35, 'Wandering Trader', 1, 'Wandering traders spawn randomly with two leashed trader llamas in the Overworld near the player, in any biome except in the void biome, controlled by the #minecraft:without_wandering_trader_spawns biome tag in Java Edition. They typically spawn within a 48-block radius of a player. In Bedrock Edition, they also try to spawn by a claimed bell in a village.', 'After spawning, the wandering trader prefers to wander within 16 blocks of the initial spawning target location, even if that player leaves, if not otherwise reacting to nearby players or mobs.', 'A wandering trader is also a source of leads, as it typically spawns with two leashed trader llamas. These leads break and drop (at the location of the llama) if either trader or llama dies, if they are separated, or if the player uses shears to snip the lead(s). Shearing the wandering trader has no effect. The leads can only be sheared off the llamas.', '1.14', '2019-04-23'),
(36, 'Skeleton Horse', 3, 'A \"skeleton trap\" horse is a skeleton horse spawned from a fraction of lightning generated naturally by a thunderstorm (0.75–1.5% chance on Easy, 1.5–4% on Normal, and 2.25–6.75% on Hard difficulty, depending on regional difficulty). In Java Edition, the lightning that spawns a trap horse doesn\'t strike nearby entities or spawn fires. Lightning strikes created from a Channeling-enchanted trident and lightning strikes directed to a lightning rod never spawn a skeleton trap horse. The trap horse despawns after 15 minutes if not triggered (even if it is named). Trap horses will spawn in any biome where it can rain, even in mushroom fields and deep dark.', 'The skeleton horse is an undead mob that spawns and triggers a \"skeleton trap\" if the player gets too close. Once the skeleton rider is defeated, the skeleton horse becomes completely passive. Skeleton horses behave like normal horses, roaming idly and occasionally stopping to rear, swish their tails, or lower their heads as though eating the grass. Unlike sheep, the eating animation does not actually cause any grass to be consumed. Skeleton horses can breathe in water.', 'Bone', '1.6.1', '2013-07-01'),
(37, 'Zombie Horse', 3, 'Zombie horses can naturally spawn on grass blocks in savanna, savanna plateau, windswept savanna, plains, sunflower plains, and snowy plains biomes as zombie horsemen: a zombie wielding an iron spear riding a zombie horse. Like zombies themselves, zombie horsemen can only spawn at a light level of 0‌[Java Edition only], or light levels below 7‌[Bedrock Edition only][1], both above ground and underground. However, due to the lack of grass blocks underground in the Overworld, they are mostly found on the surface. The zombie horse never spawns as a baby. Other zombie variants such as husks and zombie villagers cannot spawn as horsemen. In Bedrock Edition, zombie horses are programmed to spawn in ice spikes biomes, but they fail to do so naturally, as the biome\'s surface is made of snow blocks instead of grass blocks, meaning they also cannot spawn underground in that biome.', 'The zombie horse is an undead mob that spawns as a hostile mob with a zombie controlling it, as the rider controls its pathfinding, making the zombie horse target the player. On their own, zombie horses behave like normal horses, roaming idly and occasionally stopping to rear, swish their tails, or lower their heads as though eating the grass. Unlike sheep and like other horses, the eating animation does not cause any grass to be consumed.', 'Rotten Flesh', '1.6.1', '2013-07-01'),
(38, 'Bee', 2, 'Naturally generated bee nests generate with 3 bees in them.', 'Bees are considered arthropods and take increased damage from the Bane of Arthropods enchantment. They also take 1HP damage every half second if they stay in water for more than 20 game ticks (1 second). Bees do not take damage from sweet berry bushes.', 'Upon death, adult bees drop 1–3XP experience when killed by a player or a tamed wolf. Like other baby animals, killing a baby bee yields no experience.', '1.15', '2019-12-10'),
(39, 'Cave Spider', 2, 'The cave spider is one of the only two mobs in the game to spawn exclusively from spawners, the other being the breeze.', 'They are neutral if under daylight or in light levels of 12 or above, otherwise hostile toward players and iron golems. Once they become hostile, light does not affect them.', 'String, Spider Eye', '1.8', '2011-09-14'),
(40, 'Dolphin', 2, 'Dolphins are found in groups (pods) of 1-2‌[JE only] or 3-5‌[BE only] in all ocean biomes, excluding frozen oceans and cold oceans. They spawn exclusively between levels 50 and 64. Dolphins continuously spawn as long as their spawn requirements are met, and naturally despawn if no players are near by, similar to squid and nautiluses.', 'Dolphins normally swim in pods, occasionally leaping out of the water to get air. They are also able to jump from one body of water to another. Additionally, they chase after players in boats but don\'t give the speed boost effect.', 'Raw Cod, Cooked Cod', '1.13', '2018-07-18'),
(41, 'Drowned', 2, 'Drowned spawn naturally at water blocks that emit light level of 0 and internal sky light level being 7 and below in all ocean biomes, aquifers in the dripstone caves biome, and river biomes. They spawn at higher rates in rivers and dripstone caves than in ocean biomes.', 'During the day, drowned stay on the floor of the body of water they are in, unless provoked.', 'Rotten Flesh, Copper Ingot', '1.13', '2018-07-18'),
(42, 'Enderman', 2, 'Endermen can spawn on any solid surface that has at least three empty spaces above, at a light level of 0 in the Overworld and the End, or a light level of 7 or less in the Nether. They are the only mobs that spawn naturally in all three dimensions.', 'In Java Edition, staring an aggravated enderman in the eyes from within 16 blocks of it paralyzes it, causing it to stop moving as long as the player maintains eye contact. The enderman still displays aggravated behavior, shaking and screaming with its mouth open, and resumes its chase should the player stop looking at it. Moving within four blocks of a paralyzed enderman causes it to teleport away. Unlike the distance to provoke an enderman, the minimum and maximum paralyzing distances are not affected by sneaking or invisibility.', 'Ender Pearl', '1.8', '2011-09-14'),
(43, 'Fox', 2, 'Foxes have two color variants, red and snow, which depend on the biome they spawn in. Red foxes spawn in taigas, old growth pine taigas, and old growth spruce taigas, while snow foxes spawn in groves and snowy taigas.', 'Foxes flee from nearby wolves, polar bears or players unless the player is trusted or approaches them while sneaking. They take no damage or speed reduction while moving through sweet berry bushes.', 'An adult fox drops 1–3XP experience orbs when killed by a player or tamed wolf. Upon successful breeding, 1–7XP are dropped. Killing a baby fox yields no experience.', '1.14', '2019-04-23'),
(44, 'Goat', 2, 'Groups of two to three goats spawn above stone, gravel, packed ice or snow blocks on snowy slopes, jagged peaks, and frozen peaks at the surface. Goats spawn individually and more uncommonly after the world generation. 5% of all goats spawn as babies.', 'When left to wander, goats tend to ascend hills and mountains rather than keep to lowlands. Their behavior is marked by jumping high and by opportunistically ramming non-moving mobs.', 'An adult goat that has at least one horn on its head will lose one of them and drop a goat horn if it charges into any of the following solid blocks: stone, coal ore, copper ore, iron ore, emerald ore, logs, or packed ice.', '1.17', '2021-04-14'),
(45, 'Iron Golem', 2, 'In Java Edition, villagers can summon iron golems, either when they are gossiping or every 5 seconds while panicking.', 'Iron golems wander around a village in a patrol-like fashion, staying close to buildings and other structures. Like villagers, iron golems do not wander away from a village, regardless of how they were spawned, but sometimes stand at the border of the village.', 'Poppy, Iron Ingot', '1.2.1', '2012-03-01'),
(46, 'Llama', 2, 'A llama spawns above on grass blocks in savanna plateau, savanna‌[BE only][1] or windswept savanna‌[BE only] biomes in herds of 4 llamas, and in windswept hills, windswept forest, and windswept gravelly hills biomes in herds of 4 to 6 llamas, coming in four coat colors: brown, cream, white or gray.', 'Llamas are neutral mobs that retaliate when attacked by a player or another mob. Occasionally, their spit can miss its intended target and accidentally hit another llama, causing them to fight each other.', 'Leather', '1.11', '2016-11-14'),
(47, 'Nautilus', 2, 'Nautiluses spawn in all ocean biomes, in groups of 1-3. Nautiluses spawn between levels 38 and 58.', 'Like its real-world namesake, a nautilus\'s mouth and tentacles face backward with respect to their movement direction. Being an aquatic mob, they are affected by the Impaling enchantment in Java Edition.', 'Nautilus Shell', '1.21.11', '2025-12-09'),
(48, 'Panda', 2, 'Pandas spawn rarely in groups of 1–2 in jungle biomes on grass blocks with at least a two-block space above them. They are slightly ‌[Bedrock Edition only] or way ‌[Java Edition only] more common in bamboo jungles and have a 5% chance to spawn as a baby. They do not spawn on podzol.', 'A panda tends to roll off cliffs while playing around. Pandas act similarly to other neutral mobs and attack when hurt but only once, similar to llamas and bees, except on Peaceful difficulty, in which pandas are passive. Attacking pandas are far more vicious in Java Edition.', 'Bamboo', '1.14', '2019-04-23'),
(49, 'Piglin', 2, 'Piglins spawn in groups of 4 in nether wastes and 3-4 in crimson forest biomes at light levels of 11‌[Java Edition only] or 7‌[Bedrock Edition only] and below. They can spawn on most blocks other than nether wart blocks and magma blocks.', 'Idle piglins retreat from zombified piglins, zoglins, soul fire, soul torches, soul lanterns, and lit soul campfires. Piglins ignore soul fire items when pursuing the player, but still run from zombified piglins and zoglins. Baby piglins additionally retreat from wither skeletons and withers.\n\n', 'Piglin Head', '1.16', '2020-06-23'),
(50, 'Polar Bear', 2, 'Polar bears spawn in snowy plains, ice spikes, frozen and deep frozen ocean biomes, and additionally/sometimes in frozen river, legacy frozen ocean, snowy slopes, jagged peaks, and frozen peaks biomes in Bedrock Edition. They spawn in groups of up to two, above ice. In Java Edition, polar bears don\'t spawn on ice in snowy plains and ice spikes biomes. If there is a group, the second polar bear is a baby.', 'Polar bears can be passive, neutral, or hostile depending on the situation. Baby polar bears are passive, and adults are neutral; becoming hostile when a player either directly attacks it or when the player comes close to or attacks any baby polar bears near it (unless killed in one hit‌[JE only]).\n', 'Raw Cod, Cooked Cod, Raw Salmon, Cooked Salmon', '1.10', '2016-06-08'),
(51, 'Pufferfish', 2, 'In Java Edition, pufferfish spawn in groups of 1-3 in warm, lukewarm, and deep lukewarm ocean biomes, subject to fish spawning requirements. If trying to spawn inside a waterlogged solid block, the pufferfish uses the bigger \"puffed\" size to determine if it collides with anything solid.', 'Pufferfish inflate themselves when approached by the player, most mobs, including tripod cameras‌[BE & edu only] and armor stands.', 'Pufferfish, Bone Meal', '1.13', '2018-07-18'),
(52, 'Spider', 2, 'Spiders can spawn in the Overworld at a light level of 0 within a 3×1×3 space centered on an opaque block. In Java Edition, the block above the spawning space cannot be a full solid block, including transparent ones such as leaves or glass, but non-full blocks, such as soul sand or slabs, are allowed.[1] Spiders do not spawn in mushroom fields and deep dark biomes. In Bedrock Edition, spiders also do not spawn in rivers, frozen rivers, and snowy plains and do not spawn in groups.', 'A spider stays hostile toward the player or an iron golem as long as the light level immediately around the spider is 11 or less; otherwise, it does not attack unless attacked first. If a spider chases its target into an area where the light level immediately around the spider is above 11, it returns to a neutral state. However, spiders pursue targets regardless of the light level in retaliation to an attack. Spiders don\'t instantly become hostile to the player in low-light levels, if the player stays in their range for too long, they become hostile to the player.‌[Bedrock Edition only]', 'String, Spider Eye', '0.26', '2009-10-24'),
(53, 'Trader Llama', 2, 'Every wandering trader spawns with two leashed trader llamas.', 'Trader llamas are neutral, retaliating when it or the associated wandering trader is attacked by a player or mob. Sometimes their spit can miss their target and hit another (trader) llama, starting a fight within a group of (trader) llamas.', 'Leather', '1.14', '2019-04-23'),
(54, 'Wolf', 2, 'Wild wolves spawn naturally in multiple biomes on grass blocks, coarse dirt, snow (in Java Edition only on 8 layers of snow), snow blocks or podzol. They have a 10% chance of spawning naturally as a baby. Their appearance and the amount of wolves that attempt to spawn depend on the biome.', 'Untamed wolves have a drooping tail and their eyes consist of a white pixel and a black pixel for the pupil (on each side). They are neutral toward the player. They are hostile toward sheep, rabbits, foxes, baby turtles, skeletons, wither skeletons, strays, bogged, and parched, taking on their angry appearance while attacking these mobs, and changing back when the targeted mob dies or moves out of range. They chase bats despite being unable to reach them.[3] They avoid llamas, although wolves will always attack a llama that spits on them. They do not despawn, even if they are in an unloaded chunk, or 32 blocks away from the player. They can be ridden by baby zombie variants.‌[BE only]', 'Adult wolves drop 1–3XP experience orbs when killed by a player or a tamed wolf. In Bedrock Edition, a tamed wolf that is killed by its owner does not drop experience.', '1.4', '2011-03-31'),
(55, 'Zombie Nautilus', 2, 'When an adult drowned spawns outside of river or frozen river biomes, (excluding drowned reinforcements) either naturally or as part of a structure (i.e. an underwater ruin), and is wielding a trident in its main hand, it has a 50% chance to spawn as a zombie nautilus jockey, riding a zombie nautilus.[verify for Bedrock Edition] Zombie nautilus jockeys thus spawn in dripstone caves and various ocean biomes; those that spawn in warm oceans will become the coral zombie nautilus variant, which only differs in appearance.', 'Zombie nautiluses behave like regular nautiluses, drifting through water. They move backward, propelling themselves and leaving bubble particles behind.', 'Rotten Flesh', '1.21.11', '2025-12-09'),
(56, 'Zombified Piglin', 2, 'In Nether wastes and crimson forest biomes, and Nether fortresses in the Nether.', 'Zombified piglins wander aimlessly about when idle. They move at 2.28 m/s and are immune to fire and lava. When provoked, their speed increases to 3.38 m/s or faster for babies.', 'Rotten Flesh, Gold Nugget, Gold Ingot', '1.2', '2010-10-30'),
(57, 'Blaze', 3, 'Blazes may spawn naturally in Nether fortresses in groups of 2 or 3‌[JE only] and from 1 to 3‌[BE only] at a light level of 11 or less.', 'Blazes can fly and are immune to damage from fire and lava. When not attacking, they stay on the ground or slowly sink through the air. When idle, blazes attempt to swim upward in lava or water in Bedrock Edition but sink in Java Edition. Despite taking damage from water, blazes make no attempt to protect themselves if pushed or dropped into water. Their pathfinding does not avoid fire or lava but does avoid water.', 'Blaze Rod', '1.0', '2011-11-18'),
(58, 'Bogged', 3, 'Bogged can spawn in swamps and mangrove swamps, replacing about 30% of skeletons, as well as in trial chambers via trial spawners.', 'Bogged behave the same as normal skeletons and shoot tipped arrows that inflict Poison for 4 seconds (dealing 3HP damage) on any target that they hit. When shooting their bow, bogged are just as fast as skeletons or strays, but bogged have a longer cooldown between attacks. The cooldown is 3.5 seconds on Easy and Normal difficulties, or 2.5 seconds on Hard. This is 1.5 seconds slower than the skeleton\'s attack cooldown. A bogged holding a tipped arrow or spectral arrow in its off-hand always shoots that type of arrow instead, and the arrow held is not consumed.', 'Bone, Arrow, Arrow of Poison', '1.21', '2023-10-15'),
(59, 'Breeze', 3, 'Breezes spawn from trial spawners that generate surrounded by chiseled tuff in trial chambers. These trial spawners only generate in combat chambers, and never in the corridors. Only one breeze spawner can generate in each combat chamber, and it is usually in the center of the room.', 'A breeze leaps around between firing wind charges at its target. Before jumping, it compresses itself like a spring and can jump up to 15 blocks horizontally and 5 blocks vertically. If the breeze is in lava, it can jump only one block into the air. Breezes are immune to all fall damage.', 'Breeze Rod', '1.21', '2023-10-15'),
(60, 'Creaking', 3, 'Creakings spawn when an activated creaking heart is triggered at nighttime. To activate the heart, it must be placed between two pale oak blocks (pale oak logs, pale oak wood, stripped pale oak logs, or stripped pale oak wood) with the same orientation as the heart and along the same axis (for example, all three oriented along the Y axis, stacked on top of each other). When these conditions are met and the creaking heart is within the Overworld, a creaking spawns within 16 blocks horizontally and 8 blocks vertically of the creaking heart. The spawned creaking is linked to this creaking heart. The creaking heart does not deactivate even if its surrounding logs are broken or moved via pistons when the creaking is out.', 'Newly spawned creakings begin in an unalerted state. While in this state, their eyes are dimly lit and they walk around aimlessly.', 'Creakings do not drop any items or experience on death.', '1.21.4', '2024-12-03'),
(61, 'Creeper', 3, 'Creepers naturally spawn in the Overworld on solid blocks with a light level of 0, except in mushroom fields and deep dark biomes. In Bedrock Edition, creepers also do not spawn in rivers, frozen rivers, and snowy plains. They spawn individually in Bedrock Edition and in groups of four in Java Edition.', 'Creepers chase any player within a 16-block radius. They chase the player at a 14-block radius when they are crouching. They do not attack any other mob without provocation by being attacked first.', 'Gunpowder, Music Disc, Creeper Head', '0.24', '2009-09-01'),
(62, 'Elder Guardian', 3, 'Three elder guardians spawn naturally during the generation of each ocean monument', 'Elder guardians do not swim around as much as normal guardians, and they do not swim away when approached by a player they are targeting, unlike regular guardians. Like normal guardians, elder guardians attempt to attack the player, squid, glow squid, and axolotls.', 'Wet Sponge, Tide Armor Trim, Prismarine Shard, Prismarine Crystals, Raw Cod, Cooked Cod, Raw Salmon, Cooked Salmon, Pufferfish, Tropical Fish', '1.8', '2014-09-02'),
(63, 'Endermite', 3, 'Endermites have a 5% chance to spawn when a player-thrown ender pearl lands. They spawn at the player\'s original position when the pearl lands‌[Java Edition only], or at the pearl\'s landing site‌[Bedrock Edition only].', 'In Java Edition, endermites become hostile towards any mob that attacks another endermite. Endermites in Bedrock Edition on the other hand do not become hostile towards any mob that attacks it.', 'Endermites drop 3XP experience orbs when killed by a player or tamed wolf.\n\n', '1.8', '2014-09-02'),
(64, 'Evoker', 3, 'Evokers spawn during the generation of particular woodland mansion rooms. They only spawn on floor 2 and 3. They do not respawn after their initial spawn.', 'Evokers attack players, adult villagers, iron golems, snow golems,‌[BE only] and wandering traders within 12 blocks by raising and waving both of their arms while looking at their target and summoning magical fangs or vexes, creating different colored particles for the different attacks.', 'Totem of Undying, Emerald', '1.11', '2016-11-14'),
(65, 'Ghast', 3, 'To spawn naturally, a ghast requires a solid block below it and a free space 5×5 blocks wide and 4 blocks high. They spawn in the basalt deltas, Nether wastes, and soul sand valley biomes in any light level. In Java Edition, ghasts cannot spawn in soul sand valleys if another ghast is within 16 blocks of spherical distance to the intended spawning location. In Bedrock Edition, two ghasts can spawn within any 4 chunk span.', 'When within range, a ghast faces the player and shoots a fireball every 3 seconds, opening its eyes and mouth and making a screeching sound. They strafe left to right in the air while targeting. A ghast requires a line of sight to the player before firing, which can be blocked by any solid block, including transparent blocks. In Java Edition, they target players within 64 blocks horizontally and 4 blocks vertically[2], and continue attacking as long as they are within a 64 block sphere and have line of sight. In Bedrock Edition, a ghast normally targets a player within a sphere of 28 blocks, increasing to 64 blocks if the player damages it. In Bedrock Edition, a ghast holds its charge like a pillager when it loses sight of its target and shoots again instantly when in range.', 'Ghast Tear, Gunpowder, Music Disc Tears', '1.2', '2010-10-30'),
(66, 'Guardian', 3, 'Guardians spawn naturally in ocean monuments. They require water, flowing or stationary, to spawn.', 'Guardians swim around in water, attacking any players, squid, glow squid, or axolotls that come into range of its laser. They swim in abrupt charges, moving their tail rapidly when doing so. When swimming, their spikes retract. When not swimming, they sink slowly and their spikes extend and quiver.', 'Prismarine Shard, Prismarine Crystals, Raw Cod, Cooked Cod, Raw Salmon, Cooked Salmon, Pufferfish, Tropical Fish', '1.2', '2010-10-30'),
(67, 'Hoglin', 3, 'Hoglins are found in herds of 3–4 in crimson forests, respawning over time. They can spawn at any light level and on most solid blocks other than Nether wart blocks and shroomlights.‌[BE only]', 'Hoglins avoid being within 7 blocks of warped fungi (including in a flower pot), Nether portals and respawn anchors. They naturally sink in water and eventually drown.[1] They also sink in lava and are vulnerable to fire damage.[2] Hoglins can be led with a lead even though they are hostile.', 'Raw Porkchop, Cooked Porkchop, Leather', '1.16', '2020-06-23'),
(68, 'Husk', 3, 'Husks spawn at a light level of 0 in the desert, mostly replacing zombies in these biomes.', 'Like zombies, husks are hostile toward the player, iron golems, villagers, baby turtles, and wandering traders. They pursue these mobs on sight from up to 40 blocks away, as opposed to 16 blocks like most other hostile mobs. If any other mob attacks a husk on purpose, all other husks and zombie variants (except zombified piglins) within a 67×67×21 to 111×111×21 area become hostile toward the attacker. They attempt to avoid obstacles, including sheer cliffs, water, and lava, and try to find the shortest path to the player.', 'Rotten Flesh, Iron Ingot, Carrot, Potato, Baked Potato, Rabbit\'s Foot', '1.10', '2016-06-08'),
(69, 'Magma Cube', 3, 'Magma cubes spawn in areas of the Nether at all light levels. The space they spawn in must be clear of solid obstructions and liquids. Because they are inherently fireproof, magma cubes can spawn on magma blocks.', 'A magma cube seeks out any player or an iron golem within a spherical distance of 16 blocks. If it finds no enemy, it changes direction every 40 to 100 ticks (2 to 5 seconds) and jumps forward every 40 to 120 ticks (2 to 6 seconds). If it finds a target, the delay before jumping is 1⁄3 as long (13 to 40 ticks), and the magma cube changes direction directly toward the target before jumping.', 'Magma Cream, Verdant Froglight, Ochre Froglight, Pearlescent Froglight', '1.0', '2011-11-18'),
(70, 'Parched', 3, 'Parched can spawn in deserts at night, replacing some skeletons.', 'Parched mostly behave like normal skeletons but shoot extended arrows of Weakness instead of normal arrows. Their cooldown between each bow shot is longer than normal skeletons at every 3.5 seconds on Easy and Normal and every 2.5 seconds on Hard. Parched do not burn in sunlight. Parched are unaffected by the Weakness effect, although this does not usually affect them anyway, since they attack using projectiles.', 'Bone, Arrow, Arrow of Weakness', '1.21.11', '2025-12-09');
INSERT INTO `mobs` (`id`, `name`, `nature`, `spawning`, `general_behavior`, `drops`, `version_release`, `release_date`) VALUES
(71, 'Phantom', 3, 'Phantoms spawn unless the game rule spawn_phantoms‌[JE only] or doInsomnia‌[BE only] is set to false. The spawning mechanics differ between Java and Bedrock editions. In both editions, they spawn in the Overworld above a player whose \"Time Since Last Rest\" statistic is at least 1 hour (72000 ticks or 3 in-game days).[verify] This statistic is reset when the player dies or enters a bed. This does not require skipping the night. Furthermore, the player must not have a block overhead that blocks light in any way; for example, leaves prevent phantoms from spawning as they have a light opacity of 2, but glass does not, as its light opacity is 0. Phantoms do not spawn above players in Spectator mode, but they do spawn above players in Creative mode.', 'When idle, phantoms fly around in a roughly circular pattern within 15 to 25 blocks of a player horizontally and within 24 to 35 blocks of a player vertically. They leave a trail of gray smoke while they fly. Their movement speed is one of the fastest of any mob, up to 20 blocks per second. They have a large search radius, targeting and following players from 64 blocks away. Once every 10-20 seconds‌[BE only] or every 8-12 seconds‌[JE only], they swoop in to attack. If stopped or hurt during this action, the phantom retreats back to its original elevation with sky visibility. When a path to its original elevation is obstructed by a block, the phantom continues attempting to return to its original elevation until it either attacks or moves out from under the block. In the case of spawning under a high glass ceiling, phantoms spawn, immediately attack, and then fly up to the glass (even despawning in the process if they get far enough). Phantoms attack exposed players in beds, but do not attack players in creative mode. Phantoms switch targets if a player has spawned them but another player qualifies to be attacked, however they are neutralized if the spawning or targeted player resets their timer.', 'Phantom Membrane', '1.13', '2018-07-18'),
(72, 'Piglin Brute', 3, 'A small number of piglin brutes spawn in some rooms of bastion remnants only upon generation, so they are not renewable. They do not have a baby variant.', 'Piglin brutes attack players, wither skeletons, and withers within 16 blocks and are not distracted by golden items or blocks. However, they prefer to attack players over wither skeletons and withers. They also attack any mob, including goats,[1] that attacks any piglin or piglin brute, either by accident or purposefully. Examples include retaliation for attacks by snow golems and iron golems.', 'A piglin brute has 8.5% chance of dropping a golden axe with a random durability if killed by a player or a tamed wolf, increased by 1% with each level of Looting, with a total 11.5% chance with Looting III.', '1.16.2', '2020-08-11'),
(73, 'Pillager', 3, 'In Java Edition, a pillager spawned by a player using a spawn egg or commands can be a captain, which has an ominous banner in their head slot, which displays as attached to the back of their head.', 'Pillagers move slowly when wandering or loading crossbows in Java Edition. In Bedrock Edition, pillagers move from one place to another as fast as when they\'re provoked.', 'Ominous Bottle', '1.14', '2019-04-23'),
(74, 'Ravager', 3, 'Ravagers spawn starting at wave 3 as part of a raid. Depending on the wave, difficulty, and Raid Omen level,‌[JE only] they spawn independently or with a pillager, vindicator, or evoker that rides them as a ravager jockey.', 'A ravager attacks by running toward its target and ramming with its head, dealing a knockback of 5 blocks. A ravager also attacks by opening and closing its mouth, biting its target. In Bedrock Edition, ravagers may occasionally miss players when trying to attack, unlike other mobs.', 'Saddle', '1.14', '2019-04-23'),
(75, 'Shulker', 3, 'Shulkers spawn during the generation of End cities, which are located on the outer islands of the End. They usually spawn on the walls of the city and on End ships. They do not despawn naturally, even in Peaceful difficulty.', 'Shulkers generally remain stationary, attached to an adjacent block with a full face.[2] However, if the block the shulker occupies becomes something other than air or the shulker finds itself not adjacent to any full face, or the shell cannot fully open (due to solid blocks or entities such as boats or other shulkers), it attempts to teleport away.', 'Shulker Shell', '1.9', '2016-02-29'),
(76, 'Silverfish', 3, 'Silverfish spawn from broken infested blocks, which generate in strongholds, underground in mountains and windswept hills biomes, in igloo basements, and in woodland mansion false portal rooms. Silverfish do not appear if the block is broken with the Silk Touch enchantment.', 'Silverfish attack players and snow golems, and call other silverfish in the area upon being hit. Silverfish pathfind toward the player and can see the player through walls.', 'Silverfish have no drops other than 5XP experience points when killed by a player or tamed wolf.', '1.8', '2011-09-14'),
(77, 'Slime', 3, 'Slimes spawn naturally in 3 sizes: small, medium, and large. A fourth size, known as semi-large, only spawns from trial spawners and never naturally. Slimes have an NBT tag, [Byte] Size, which determines their size. Small, medium, and big slimes have their Size set to 0, 1, and 3 respectively. Using the /summon or /data commands, a slime can be given any Size in the range from 0 to 126 (inclusive).', 'Unlike most mobs, slimes do not pathfind toward their target, always approaching their target in a straight line without avoiding environmental hazards such as lava, cactus or dangerous falls. This means they can easily get stuck in corners or behind walls, not knowing how to circumvent them. This behavior is shared by magma cubes.', 'Slimeball', '1.0.11', '2010-07-23'),
(78, 'Stray', 3, 'A stray may spawn directly under the sky in snowy plains, or ice spikes, replacing 80% of skeletons. Additionally, a stray may spawn in frozen rivers, frozen oceans, deep frozen oceans, legacy frozen oceans, snowy slopes, jagged peaks and frozen peaks in Bedrock Edition. Strays do not spawn naturally from monster spawners in Java Edition.', 'Strays behave the same as normal skeletons but make noises with an echoing effect and shoot tipped arrows that inflict Slowness for 30 seconds on any target that they hit. In Bedrock Edition, strays that are underwater use a melee attack that inflicts Slowness. Strays do not take damage from freezing in powder snow, but they are not immune to Slowness. A stray holding a tipped arrow or spectral arrow in its off-hand always shoots that type of arrow instead, and the arrow held is not consumed.', 'Bone, Arrow, Arrow of Slowness', '1.10', '2016-06-08'),
(79, 'Vex', 3, 'The vex only spawns as part of an evoker\'s summoning attack. While summoning, the evoker is surrounded by white particles and makes a magical, horn-like sound. Then, a group of three vexes appears near the evoker. The evoker can summon additional vexes even if some still remain alive from the last summoning. Blocks obstructing a vex\'s spawning point will prevent vexes from spawning.', 'Vexes attack players, adult villagers, iron golems, wandering traders, and any other target as commanded by their summoning evoker (any mob that attacks the evoker accidentally or purposefully)‌[JE only] or by itself‌[BE only]. They still attack these mobs even when they do not have a weapon, dealing the same damage and raising both of its hands when attacking; an unarmed vex can be spawned with this command /summon vex ~ ~ ~ {}.‌[JE only] Vexes summoned by a monster spawner, spawn egg, or by the /summon command don\'t attack players unless provoked or already tied with another mob.', 'The vex\'s iron sword does not drop, because its main hand\'s HandDropChances‌[JE only] or SlotDropChances‌[BE only] is 0. This is not affected by the Looting enchantment.', '1.11', '2016-11-14'),
(80, 'Vindicator', 3, 'Vindicators spawn during the generation of woodland mansions, in groups of 1–3 inside particular rooms, sometimes accompanied by an evoker. They spawn on all 3 floors. Rarely, vindicators can spawn in the corridors and hallways.', 'Vindicators are hostile toward players, iron golems, adult villagers, wandering traders, and snow golems.‌[BE only]', 'Emerald', '1.11', '2016-11-14'),
(81, 'Warden', 3, 'Each player has a warning level, which increases every time that player activates a naturally generated sculk shrieker. This is not specific to any sculk shrieker. A sculk shrieker that has already been activated by a player before activates the same way it does normally, and the warning level does not reset if the player were to activate a new sculk shrieker. The distance between the shriekers doesn\'t matter. The shrieker spawns a warden 4.5 seconds after the warning level reaches 4, or immediately if the sculk shrieker is destroyed. If the warning level is already at 4, it stays at 4 and spawns another warden.', 'After spawning, wardens wander randomly and move toward nearby vibrations originating from players, mobs, and non-mob sources including projectiles and minecarts. A warden also periodically sniffs the area around it, allowing it to zero in on targets even if they don\'t create vibrations. As wardens sniff, pick up vibrations, or are touched by other players or mobs, they become increasingly agitated.', 'Sculk Catalyst', '1.19', '2022-06-07'),
(82, 'Witch', 3, 'Swamp biomes feature swamp huts, which spawn a witch and a black cat inside during world generation, and both never despawn. After world generation, only witches can spawn in the hut, provided that the entire hut is inside a swamp biome.', 'A witch pursues the player within 16 blocks and uses potions of the first level in combat, throwing splash potions offensively and drinking potions defensively. These potions are the same as ones obtainable through brewing, with the same duration. A witch has an infinite stock of potions, even when transformed from a villager or not having had any potions equipped in their inventory. Each potion chosen by the witch depends on the circumstance and is thrown within ten blocks and in a three-second interval.', 'Redstone Dust, Glass Bottle, Glowstone Dust, Gunpowder, Spider Eye, Sugar, Stick', '1.4.2', '2012-10-25'),
(83, 'Wither Skeleton', 3, 'Wither skeletons can spawn in Nether fortresses at a light level between 0 and 7, in groups of 5‌[JE only] or 2-3‌[BE only]', 'Wither skeletons wander aimlessly when idle. They sprint to attack players, iron golems, baby turtles, piglins, and piglin brutes within 16 blocks.', 'Coal, Bone, Wither Skeleton Skull', '1.4.2', '2012-10-25'),
(84, 'Zoglin', 3, 'Zoglins spawn when a hoglin has been out of the Nether for 300 game ticks (15 seconds). For their first 10 seconds after zombification, they get the Nausea effect‌[JE only][1]. This nausea effect is cosmetic and does not affect its behavior.', 'Zoglins are hostile toward armor stands[2], cameras‌[BE & edu only], players in Adventure or Survival mode, and all mobs except agents, creepers, ghasts, and other zoglins. This includes hoglins and zombified piglins. Normal hoglins do not attack zoglins unless provoked by zoglins.', 'Rotten Flesh', '1.16', '2020-06-23'),
(85, 'Zombie Villager', 3, 'In Java Edition, when zombies spawn during the normal cycle, there is a 5% chance that one of them will be replaced with a zombie villager. This chance increases to 20% in old growth pine taiga biomes.', 'Zombie villagers behave as ordinary zombies, except that they do not convert to drowned when submerged.', 'Rotten Flesh,	Iron Ingot, Carrot, Potato, Baked Potato', '1.14', '2019-04-23'),
(86, 'Ender Dragon', 3, 'The ender dragon spawns 20 game ticks (1 second) after an entity first arrives in the End, along with the bedrock frame for the exit portal.', 'During the battle with the ender dragon, unique music called \"Boss\" plays, the edges of the screen darken, black fog appears, and chunks around the exit portal are constantly loaded regardless of simulation distance. These happen as long as there is at least one player within a Euclidean distance of 192 blocks from (0.0, 128, 0.0).', 'Starting 7.7 seconds (154 game ticks) after the dragon begins ascending, a total of 12000XP experience points (ten drops of 960 and one drop of 2400) appear out of the dragon\'s body (one by one, per tick) — enough to bring a player from no experience all the way up to level 68. Some of the experience orbs can drop into the exit portal and can then be retrieved in the Overworld.', '1.0', '2011-11-18'),
(87, 'Wither', 3, 'The wither is spawned by placing 4 blocks of soul sand and/or soul soil in a T shape, and putting 3 wither skeleton skulls on top of the three upper blocks. The last block placed must be one of the skulls (which can either be placed by hand or by a dispenser) then it will load a boss bar that takes 12 seconds to fully charge up, this then is followed by a large explosion. Air blocks are required on either side of the base soul sand/-soil. The orientation of the skulls does not matter, and the structure as a whole can be built upright, lying down, or upside-down. The wither spawns at the base soul sand/soil.', 'Upon noticing a mob or a player within 40 blocks, the wither hovers above it and rapidly shoots black wither skulls. The wither always tries to fly 5 blocks above, and within 3 blocks horizontally from its target. Each head fires independently, allowing a wither to attack up to three different mobs/players at the same time. The wither skulls try to fly toward the middle of the target\'s eye height and its feet vertically and the middle of its hitbox horizontally.', 'Nether Star', '1.4.2', '2012-10-25');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `mob_entity_tag`
--

CREATE TABLE `mob_entity_tag` (
  `id` int(11) NOT NULL,
  `mob_id` int(11) NOT NULL,
  `entity_tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `mob_entity_tag`
--

INSERT INTO `mob_entity_tag` (`id`, `mob_id`, `entity_tag_id`) VALUES
(1, 1, 9),
(2, 1, 10),
(3, 1, 27),
(4, 1, 33),
(5, 1, 35),
(6, 1, 45),
(7, 1, 46),
(8, 1, 47),
(9, 1, 43),
(10, 2, 9),
(11, 2, 10),
(12, 2, 27),
(13, 2, 33),
(14, 2, 35),
(15, 2, 43),
(16, 2, 44),
(17, 2, 45),
(18, 2, 46),
(19, 3, 22),
(20, 4, 23),
(21, 5, 2),
(22, 5, 10),
(23, 5, 42),
(24, 6, 22),
(25, 7, 12),
(26, 7, 21),
(27, 7, 23),
(28, 8, 10),
(29, 8, 12),
(30, 8, 27),
(31, 8, 33),
(32, 8, 43),
(33, 8, 45),
(34, 8, 46),
(35, 8, 47),
(36, 9, 22),
(37, 9, 23),
(38, 10, 21),
(39, 10, 22),
(40, 10, 23),
(41, 11, 2),
(42, 11, 6),
(43, 11, 10),
(44, 11, 37),
(45, 11, 42),
(46, 12, 1),
(47, 12, 10),
(48, 12, 22),
(49, 13, 23),
(50, 14, 12),
(51, 14, 21),
(52, 14, 23),
(53, 15, 10),
(54, 16, 2),
(55, 16, 6),
(56, 16, 10),
(57, 16, 37),
(58, 16, 42),
(59, 17, 21),
(60, 17, 23),
(61, 17, 11),
(62, 17, 22),
(63, 18, 12),
(64, 18, 15),
(65, 18, 21),
(66, 18, 23),
(67, 20, 12),
(68, 20, 21),
(69, 20, 23),
(70, 21, 22),
(71, 21, 23),
(72, 22, 22),
(73, 22, 23),
(74, 23, 12),
(75, 23, 21),
(76, 23, 23),
(77, 24, 23),
(78, 24, 38),
(79, 25, 2),
(80, 25, 6),
(81, 25, 10),
(82, 25, 37),
(83, 25, 42),
(84, 26, 23),
(85, 27, 23),
(86, 28, 22),
(87, 28, 25),
(88, 29, 2),
(89, 29, 6),
(90, 29, 10),
(91, 29, 37),
(92, 29, 42),
(93, 30, 12),
(94, 30, 21),
(95, 30, 23),
(96, 30, 24),
(97, 31, 2),
(98, 31, 6),
(99, 31, 10),
(100, 31, 37),
(101, 31, 42),
(102, 32, 2),
(103, 32, 6),
(104, 32, 10),
(105, 32, 37),
(106, 32, 42),
(107, 33, 2),
(108, 33, 10),
(109, 33, 37),
(110, 33, 42),
(111, 34, 18),
(112, 34, 23),
(113, 36, 10),
(114, 36, 12),
(115, 36, 18),
(116, 36, 23),
(117, 36, 27),
(118, 36, 33),
(119, 36, 43),
(120, 36, 44),
(121, 36, 45),
(122, 36, 46),
(123, 37, 9),
(124, 37, 10),
(125, 37, 12),
(126, 37, 15),
(127, 37, 18),
(128, 37, 21),
(129, 37, 27),
(130, 37, 33),
(131, 37, 43),
(132, 37, 45),
(133, 37, 46),
(134, 37, 47),
(135, 38, 4),
(136, 38, 7),
(137, 38, 22),
(138, 38, 23),
(139, 38, 41),
(140, 39, 4),
(141, 39, 35),
(142, 39, 41),
(143, 40, 2),
(144, 40, 37),
(145, 40, 42),
(146, 41, 5),
(147, 41, 9),
(148, 41, 10),
(149, 41, 27),
(150, 41, 33),
(151, 41, 43),
(152, 41, 45),
(153, 41, 46),
(154, 41, 47),
(155, 43, 23),
(156, 43, 38),
(157, 44, 23),
(158, 45, 10),
(159, 45, 22),
(160, 46, 21),
(161, 46, 23),
(162, 47, 2),
(163, 47, 10),
(164, 47, 12),
(165, 47, 16),
(166, 47, 37),
(167, 47, 42),
(168, 48, 23),
(169, 50, 23),
(170, 50, 25),
(171, 51, 2),
(172, 51, 6),
(173, 51, 10),
(174, 51, 34),
(175, 51, 37),
(176, 51, 42),
(177, 52, 4),
(178, 52, 21),
(179, 52, 35),
(180, 52, 41),
(181, 53, 21),
(182, 54, 23),
(183, 55, 2),
(184, 55, 9),
(185, 55, 10),
(186, 55, 12),
(187, 55, 16),
(188, 55, 27),
(189, 55, 33),
(190, 55, 37),
(191, 55, 42),
(192, 55, 43),
(193, 55, 45),
(194, 55, 46),
(195, 55, 47),
(196, 56, 10),
(197, 56, 27),
(198, 56, 33),
(199, 56, 43),
(200, 56, 45),
(201, 56, 46),
(202, 56, 47),
(203, 57, 22),
(204, 57, 24),
(205, 58, 9),
(206, 58, 10),
(207, 58, 27),
(208, 58, 33),
(209, 58, 35),
(210, 58, 44),
(211, 58, 43),
(212, 58, 45),
(213, 58, 46),
(214, 59, 14),
(215, 59, 20),
(216, 59, 22),
(217, 59, 35),
(218, 62, 2),
(219, 62, 5),
(220, 62, 10),
(221, 62, 37),
(222, 62, 42),
(223, 63, 4),
(224, 63, 38),
(225, 63, 41),
(226, 64, 28),
(227, 64, 29),
(228, 64, 39),
(229, 65, 22),
(230, 66, 2),
(231, 66, 5),
(232, 66, 10),
(233, 66, 37),
(234, 66, 42),
(235, 68, 10),
(236, 68, 27),
(237, 68, 33),
(238, 68, 35),
(239, 68, 43),
(240, 68, 45),
(241, 68, 46),
(242, 68, 47),
(243, 69, 22),
(244, 69, 24),
(245, 69, 26),
(246, 69, 36),
(247, 70, 10),
(248, 70, 27),
(249, 70, 33),
(250, 70, 43),
(251, 70, 44),
(252, 70, 45),
(253, 70, 46),
(254, 71, 9),
(255, 71, 10),
(256, 71, 22),
(257, 71, 27),
(258, 71, 33),
(259, 71, 43),
(260, 71, 45),
(261, 71, 46),
(262, 73, 28),
(263, 73, 29),
(264, 73, 39),
(265, 74, 39),
(266, 74, 21),
(267, 75, 22),
(268, 76, 4),
(269, 76, 38),
(270, 76, 41),
(271, 77, 26),
(272, 77, 35),
(273, 77, 36),
(274, 78, 9),
(275, 78, 10),
(276, 78, 25),
(277, 78, 27),
(278, 78, 33),
(279, 78, 35),
(280, 78, 43),
(281, 78, 44),
(282, 78, 45),
(283, 78, 46),
(284, 80, 28),
(285, 80, 29),
(286, 80, 39),
(287, 82, 39),
(288, 83, 9),
(289, 83, 10),
(290, 83, 27),
(291, 83, 33),
(292, 83, 43),
(293, 83, 44),
(294, 83, 45),
(295, 83, 46),
(296, 84, 10),
(297, 84, 27),
(298, 84, 33),
(299, 84, 43),
(300, 84, 45),
(301, 84, 46),
(302, 84, 47),
(303, 85, 9),
(304, 85, 10),
(305, 85, 27),
(306, 85, 33),
(307, 85, 43),
(308, 85, 45),
(309, 85, 46),
(310, 85, 47),
(311, 87, 10),
(312, 87, 22),
(313, 87, 25),
(314, 87, 27),
(315, 87, 33),
(316, 87, 43),
(317, 87, 45),
(318, 87, 46);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `mob_variant`
--

CREATE TABLE `mob_variant` (
  `id` int(11) NOT NULL,
  `mob_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `mob_variant`
--

INSERT INTO `mob_variant` (`id`, `mob_id`, `variant_id`) VALUES
(1, 1, 2),
(2, 1, 1),
(3, 2, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 1, 9),
(8, 7, 42),
(9, 8, 14),
(10, 9, 27),
(11, 12, 51),
(12, 12, 34),
(13, 13, 25),
(14, 14, 26),
(15, 16, 35),
(16, 17, 70),
(17, 18, 26),
(18, 19, 19),
(19, 20, 20),
(20, 20, 24),
(21, 21, 15),
(22, 28, 18),
(23, 28, 51),
(24, 29, 35),
(25, 34, 9),
(26, 34, 41),
(27, 35, 40),
(28, 35, 9),
(29, 36, 24),
(30, 36, 44),
(31, 37, 24),
(32, 37, 43),
(33, 18, 43),
(34, 18, 44),
(35, 39, 58),
(36, 41, 1),
(37, 41, 7),
(38, 45, 18),
(39, 45, 34),
(40, 46, 59),
(41, 47, 61),
(42, 49, 62),
(43, 49, 75),
(44, 52, 46),
(45, 53, 52),
(46, 55, 53),
(47, 56, 55),
(48, 56, 75),
(49, 58, 4),
(50, 58, 5),
(51, 58, 6),
(52, 58, 8),
(53, 62, 71),
(54, 64, 76),
(55, 64, 82),
(56, 65, 23),
(57, 66, 67),
(58, 67, 85),
(59, 68, 2),
(60, 68, 7),
(61, 69, 80),
(62, 70, 3),
(63, 70, 5),
(64, 70, 6),
(65, 70, 8),
(66, 72, 55),
(67, 73, 69),
(68, 73, 82),
(69, 77, 73),
(70, 78, 3),
(71, 78, 4),
(72, 78, 6),
(73, 78, 8),
(74, 80, 69),
(75, 80, 76),
(76, 83, 3),
(77, 83, 4),
(78, 83, 5),
(79, 83, 8),
(80, 84, 72),
(81, 85, 1),
(82, 85, 2),
(83, 85, 7);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `natures`
--

CREATE TABLE `natures` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `natures`
--

INSERT INTO `natures` (`id`, `title`) VALUES
(1, 'Passive'),
(2, 'Neutral'),
(3, 'Hostile');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `variants`
--

CREATE TABLE `variants` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `variants`
--

INSERT INTO `variants` (`id`, `name`) VALUES
(1, 'Husk'),
(2, 'Drowned'),
(3, 'Bogged'),
(4, 'Parched'),
(5, 'Stray'),
(6, 'Wither Skeleton'),
(7, 'Zombie'),
(8, 'Skeleton'),
(9, 'Zombie Villager'),
(10, 'Allay'),
(11, 'Armadillo'),
(12, 'Axolotl'),
(13, 'Bat'),
(14, 'Camel'),
(15, 'Cat'),
(16, 'Chicken'),
(17, 'Cod'),
(18, 'Copper Golem'),
(19, 'Cow'),
(20, 'Donkey'),
(21, 'Frog'),
(22, 'Glow Squid'),
(23, 'Happy Ghast'),
(24, 'Horse'),
(25, 'Mooshroom'),
(26, 'Mule'),
(27, 'Ocelot'),
(28, 'Parrot'),
(29, 'Pig'),
(30, 'Rabbit'),
(31, 'Salmon'),
(32, 'Sheep'),
(33, 'Sniffer'),
(34, 'Snow Golem'),
(35, 'Squid'),
(36, 'Strider'),
(37, 'Tadpole'),
(38, 'Tropical Fish'),
(39, 'Turtle'),
(40, 'Villager'),
(41, 'Wandering Trader'),
(42, 'Camel Husk'),
(43, 'Skeleton Horse'),
(44, 'Zombie Horse'),
(45, 'Bee'),
(46, 'Cave Spider'),
(47, 'Dolphin'),
(48, 'Enderman'),
(49, 'Fox'),
(50, 'Goat'),
(51, 'Iron Golem'),
(52, 'Llama'),
(53, 'Nautilus'),
(54, 'Panda'),
(55, 'Piglin'),
(56, 'Polar Bear'),
(57, 'Pufferfish'),
(58, 'Spider'),
(59, 'Trader Llama'),
(60, 'Wolf'),
(61, 'Zombie Nautilus'),
(62, 'Zombified Piglin'),
(63, 'Blaze'),
(64, 'Breeze'),
(65, 'Creaking'),
(66, 'Creeper'),
(67, 'Elder Guardian'),
(68, 'Endermite'),
(69, 'Evoker'),
(70, 'Ghast'),
(71, 'Guardian'),
(72, 'Hoglin'),
(73, 'Magma Cube'),
(74, 'Phantom'),
(75, 'Piglin Brute'),
(76, 'Pillager'),
(77, 'Ravager'),
(78, 'Shulker'),
(79, 'Silverfish'),
(80, 'Slime'),
(81, 'Vex'),
(82, 'Vindicator'),
(83, 'Warden'),
(84, 'Witch'),
(85, 'Zoglin'),
(86, 'Ender Dragon'),
(87, 'Wither');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `entity_tags`
--
ALTER TABLE `entity_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `mobs`
--
ALTER TABLE `mobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_mobs_natures` (`nature`) USING BTREE;

--
-- Indeks for tabel `mob_entity_tag`
--
ALTER TABLE `mob_entity_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_mob_entity_tag_mobs` (`mob_id`) USING BTREE,
  ADD KEY `fk_mob_entity_tag_tags` (`entity_tag_id`) USING BTREE;

--
-- Indeks for tabel `mob_variant`
--
ALTER TABLE `mob_variant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_mob_variant_mobs` (`mob_id`),
  ADD KEY `fk_mob_variant_variants` (`variant_id`);

--
-- Indeks for tabel `natures`
--
ALTER TABLE `natures`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `entity_tags`
--
ALTER TABLE `entity_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Tilføj AUTO_INCREMENT i tabel `mobs`
--
ALTER TABLE `mobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- Tilføj AUTO_INCREMENT i tabel `mob_entity_tag`
--
ALTER TABLE `mob_entity_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=320;

--
-- Tilføj AUTO_INCREMENT i tabel `mob_variant`
--
ALTER TABLE `mob_variant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- Tilføj AUTO_INCREMENT i tabel `natures`
--
ALTER TABLE `natures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tilføj AUTO_INCREMENT i tabel `variants`
--
ALTER TABLE `variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- Begrænsninger for dumpede tabeller
--

--
-- Begrænsninger for tabel `mobs`
--
ALTER TABLE `mobs`
  ADD CONSTRAINT `fk_mob_natures` FOREIGN KEY (`nature`) REFERENCES `natures` (`id`);

--
-- Begrænsninger for tabel `mob_entity_tag`
--
ALTER TABLE `mob_entity_tag`
  ADD CONSTRAINT `fk_mob_entity_tag_mobs` FOREIGN KEY (`mob_id`) REFERENCES `mobs` (`id`),
  ADD CONSTRAINT `fk_mob_entity_tag_tags` FOREIGN KEY (`entity_tag_id`) REFERENCES `entity_tags` (`id`);

--
-- Begrænsninger for tabel `mob_variant`
--
ALTER TABLE `mob_variant`
  ADD CONSTRAINT `fk_mob_variant_mobs` FOREIGN KEY (`mob_id`) REFERENCES `mobs` (`id`),
  ADD CONSTRAINT `fk_mob_variant_variants` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
