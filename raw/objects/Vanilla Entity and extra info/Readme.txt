
This is the readme document for the Spellcrafts mod, by Eric Blank.

Credits:
Eric Blank - I did lots of typing and copy/pasting. At least some of the ideas I generated of my own accord, even if they aren't entirely original.
Putnam - I like his solutions to problems so much I implement them occasionally if I hit a roadblock.
Gizogin - who posted the ice spike spell that I used to help me understand other parts of the interaction system, and is still included.
With ideas shamelessly stolen from; everyone who dares to post on the bay12forums, popular culture, and mythology.
Help catching bugs and such from: gnome, Nahere and hertggf

Short summary:
This mod adds various night creatures, secrets, and ways to learn "magic" through interactions, reactions and syndromes in Dwarf Fortress. The player can learn magic in both fortress and adventure modes, through multiple means. The mod is intended to be compatible with vanilla DF and other lightweight mods which dont change many of the basic game's files. As such it is intended to run off of the vanilla DF files and does not modify them.


Installation:

Extract the contents of the zip file directly into the game's raw/objects folder. If you have an unmodified, vanilla entity_default.txt, you can simply copy the entity_default.txt in the same folder as this readme into the objects folder to override the base game and allow dwarves and humans to develop magic. If you do not have a vanilla entity_default.txt, you can copy/paste the following into the entity definitions for MOUNTAIN and PLAINS anywhere below the [ENTITY:...] line:



	[PERMITTED_JOB:ALCHEMIST]
	[PERMITTED_BUILDING:SPELL_ALCHEMY_LAB]
	[PERMITTED_REACTION:SPELL_POTION_RECUPERATION]
	[PERMITTED_REACTION:SPELL_POTION_RESIST_DISEASE]
	[PERMITTED_REACTION:SPELL_POTION_REGENERATION]
	[PERMITTED_REACTION:SPELL_ALCHEMY_STONE_PRODUCTS_SALT]
	[PERMITTED_REACTION:SPELL_ALCHEMY_STONE_PRODUCTS_RESIDUE]
	[PERMITTED_REACTION:SPELL_CONV_BASIN_CLEANING]
	[PERMITTED_REACTION:SPELL_CONV_BASIN_HEALING]
	[PERMITTED_REACTION:SPELL_CONV_BASIN_ICESTORM]
	[PERMITTED_REACTION:SPELL_CONV_BASIN_FIREBALL]
	[PERMITTED_REACTION:SPELL_CONV_BASIN_WEBBING]
	[PERMITTED_REACTION:SPELL_ALCHEMY_QUIESCENCE_BOULDER]
	[PERMITTED_REACTION:SPELL_ALCHEMY_QUIESCENCE_LOG]
	[PERMITTED_REACTION:SPELL_ALCHEMY_QUIESCENCE_BAR]
	
	[PERMITTED_BUILDING:SPELL_MAGIC_STUDY]

	[PERMITTED_BUILDING:SPELL_HOLY_ALTAR]
	[PERMITTED_REACTION:SPELL_HOLY_ALTAR_PRAY_NO_SACRIFICE]
	[PERMITTED_REACTION:SPELL_HOLY_ALTAR_SACRIFICE_FOOD]
	[PERMITTED_REACTION:SPELL_HOLY_ALTAR_SACRIFICE_GOLD]
	
	[PERMITTED_BUILDING:SPELL_ENCHANTING_TABLE]
	[PERMITTED_REACTION:SPELL_CREATE_WAND]
	[PERMITTED_REACTION:SPELL_CREATE_STAFF]
	[PERMITTED_REACTION:SPELL_CREATE_SPELLBOLTS]
	[PERMITTED_REACTION:SPELL_CREATE_TOOL_AETHER_FOCUS]
	[PERMITTED_REACTION:SPELL_CREATE_TOOL_MEDISEPHOS]
	[PERMITTED_REACTION:SPELL_CREATE_TOOL_HYAZITH]
	[PERMITTED_REACTION:SPELL_CREATE_TOOL_DEMENTED]
	[PERMITTED_REACTION:SPELL_CREATE_TOOL_KINEROCH]
	[PERMITTED_REACTION:SPELL_CREATE_TOOL_POLYBESTIAS]
	[PERMITTED_REACTION:SPELL_CREATE_TOOL_RUNESTONES]
	[PERMITTED_REACTION:SPELL_CONSTRUCT_GOLEM_BRONZE]

	[TOOL:ITEM_TOOL_BOOK_MAGIC]
	[PERMITTED_REACTION:SPELL_INSCRIBE_SLATE_SIMPLE_FORT]
	[ANIMAL]
		[ANIMAL_TOKEN:SPELL_ESSENCE_GENERIC]
		[ANIMAL_ALWAYS_PRESENT]
	[PERMITTED_REACTION:SPELL_LEARN_MAGIC_GENERAL_ALL_FORT]

	[TOOL:ITEM_TOOL_AETHER_FOCUS]
	[ANIMAL]
		[ANIMAL_TOKEN:SPELL_ESSENCE_AETHERIAL]
		[ANIMAL_ALWAYS_PRESENT]
	[PERMITTED_REACTION:SPELL_LEARN_MAGIC_AETHERIAL_FORT]

	[TOOL:ITEM_TOOL_ATHAME_HYAZITH]
	[ANIMAL]
		[ANIMAL_TOKEN:SPELL_ESSENCE_HYAZITH]
		[ANIMAL_ALWAYS_PRESENT]
	[PERMITTED_REACTION:SPELL_LEARN_MAGIC_HYAZITH_FORT]

	[TOOL:ITEM_TOOL_BESTIARY]
	[ANIMAL]
		[ANIMAL_TOKEN:SPELL_ESSENCE_POLYBESTIAL]
		[ANIMAL_ALWAYS_PRESENT]
	[PERMITTED_REACTION:SPELL_LEARN_MAGIC_POLYBESTIA_FORT]

	[TOOL:ITEM_TOOL_AMULET_MEDISEPHOS]
	[ANIMAL]
		[ANIMAL_TOKEN:SPELL_ESSENCE_MEDISEPHOS]
		[ANIMAL_ALWAYS_PRESENT]
	[PERMITTED_REACTION:SPELL_LEARN_MAGIC_MEDISEPHOS_FORT]

	[TOOL:ITEM_TOOL_ATHAME_KINEROCH]
	[ANIMAL]
		[ANIMAL_TOKEN:SPELL_ESSENCE_KINEROCH]
		[ANIMAL_ALWAYS_PRESENT]
	[PERMITTED_REACTION:SPELL_LEARN_MAGIC_KINEROCH_FORT]

	[PERMITTED_REACTION:SP_COMBINE_WOOD_LOGS]
	[PERMITTED_REACTION:SP_MAKE_PLANTCREATURE_ALCOHOL]
	[PERMITTED_REACTION:SP_MAKE_PLANTCREATURE_SYRUP]
	[PERMITTED_REACTION:SP_MAKE_PLANTCREATURE_POWDER]
	[PERMITTED_REACTION:SPELL_MAKE_AETHER_SALT_FREE]
	[PERMITTED_REACTION:SPELL_MAKE_AETHER_SALT_WOOD_GEM_FORT]
	[PERMITTED_REACTION:SPELL_MAKE_AETHER_SALT_COAL_GEM_FORT]
	[PERMITTED_REACTION:SPELL_MAKE_AETHER_SALT_COAL_METAL_FORT]
	[PERMITTED_REACTION:SPELL_MAKE_AETHER_SALT_WOOD_BARS_FORT]
	[PERMITTED_REACTION:SPELL_MAKE_AETHER_SALT_BONE_BARS_FORT]
	[PERMITTED_REACTION:SPELL_MAKE_AETHER_SALT_WOOD_BONE_FORT]
	[PERMITTED_REACTION:SPELL_MAKE_AETHER_SALT_BONE_GEM_FORT]
	[PERMITTED_REACTION:SPELL_MAKE_AETHER_SALT_BLOOD_GEM_FORT]
	[PERMITTED_REACTION:SPELL_MAKE_AETHER_SALT_VERMIN_PET_GEM_FORT]
	[PERMITTED_REACTION:SPELL_MAKE_AETHER_SALT_VERMIN_WILD_GEM_FORT]
	[PERMITTED_REACTION:SPELL_MAKE_AETHER_SALT_VERMIN_DEAD_GEM_FORT]
	[PERMITTED_REACTION:SPELL_MAKE_AETHER_SALT_FISH_GEM_FORT]
	[PERMITTED_REACTION:SPELL_MAKE_AETHER_SALT_FISH_RAW_GEM_FORT]
	[PERMITTED_REACTION:SPELL_MAKE_AETHER_SALT_CORPSE_GEM_FORT]
	[PERMITTED_REACTION:SPELL_MAKE_AETHER_SALT_CORPSEPIECE_GEM_FORT]
	[PERMITTED_REACTION:SPELL_MAKE_AETHER_SALT_PLANT_GEM_FORT]
	[PERMITTED_REACTION:SPELL_MAKE_AETHER_SALT_FRUIT_GEM_FORT]
	[PERMITTED_REACTION:SPELL_MAKE_AETHER_SALT_SEED_GEM_FORT]
	[PERMITTED_REACTION:SPELL_MAKE_AETHER_SALT_BLOOD_WOOD_FORT]
	[PERMITTED_REACTION:SPELL_MAKE_AETHER_SALT_BLOOD_PLANT_FORT]
	[PERMITTED_REACTION:SPELL_MAKE_AETHER_SALT_BLOOD_FRUIT_FORT]
	[PERMITTED_REACTION:SPELL_MAKE_AETHER_SALT_BLOOD_SEED_FORT]
	[PERMITTED_REACTION:SPELL_MAKE_AETHER_SALT_VERMIN_PET_WOOD_FORT]
	[PERMITTED_REACTION:SPELL_MAKE_AETHER_SALT_VERMIN_WILD_WOOD_FORT]
	[PERMITTED_REACTION:SPELL_MAKE_AETHER_SALT_VERMIN_DEAD_WOOD_FORT]
	[PERMITTED_REACTION:SPELL_MAKE_AETHER_SALT_FISH_WOOD_FORT]
	[PERMITTED_REACTION:SPELL_MAKE_AETHER_SALT_FISH_RAW_WOOD_FORT]
	[PERMITTED_REACTION:SPELL_MAKE_AETHER_SALT_CORPSE_WOOD_FORT]
	[PERMITTED_REACTION:SPELL_MAKE_AETHER_SALT_CORPSEPIECE_WOOD_FORT]
	[PERMITTED_REACTION:SPELL_MAKE_AETHER_SALT_PLANT_BONE_FORT]
	[PERMITTED_REACTION:SPELL_MAKE_AETHER_SALT_FRUIT_BONE_FORT]
	[PERMITTED_REACTION:SPELL_MAKE_AETHER_SALT_SEED_BONE_FORT]
	[PERMITTED_REACTION:SPELL_ENCHANTED_IRON_MAKING]
	[PERMITTED_REACTION:SPELL_CREATE_RESIDUE]
	[PERMITTED_REACTION:SPELL_REDUCE_RESIDUE]

	[PERMITTED_BUILDING:SPELL_CONJURE_CIRCLE]
	[TOOL:ITEM_TOOL_ATHAME_DEMENTED]
	[ANIMAL]
		[ANIMAL_TOKEN:SPELL_ESSENCE_DEMENTIA]
		[ANIMAL_ALWAYS_PET]
		[ANIMAL_ALWAYS_PRESENT]
	[PERMITTED_REACTION:SPELL_LEARN_MAGIC_DEMENTIA_FORT]
	[PERMITTED_REACTION:SPELL_CONJURE_CREATURES_MISC]
	[PERMITTED_REACTION:SPELL_CONJURE_CREATURES_DEMON]
	[PERMITTED_REACTION:SPELL_CONJURE_PETS_ONLY]
	[PERMITTED_REACTION:SPELL_CONJURE_FAMILIAR]
	[PERMITTED_REACTION:SPELL_CONJURE_PEON]
	[PERMITTED_REACTION:SPELL_CONJURE_EXCHANGE_AETHER]
	[PERMITTED_REACTION:SPELL_CREATE_WOOD]
	[PERMITTED_REACTION:SPELL_CREATE_OBSIDIAN]
	[PERMITTED_REACTION:SPELL_CREATE_LIMESTONE]
	[PERMITTED_REACTION:SPELL_CREATE_MAGIC_CHEESE]
	[PERMITTED_REACTION:SPELL_CREATE_MAGIC_MEAT]
	[PERMITTED_REACTION:SPELL_CREATE_MAGIC_MEAD]
	[PERMITTED_REACTION:SPELL_CREATE_MAGIC_LEATHER]
	[PERMITTED_REACTION:SPELL_CREATE_MAGIC_THREAD]
	[PERMITTED_REACTION:SPELL_CREATE_MAGIC_CLOTH]
	[PERMITTED_REACTION:SPELL_CREATE_MAGIC_SAND]

	[PERMITTED_REACTION:SPELL_CREATE_AETHER_ROCK]
	[PERMITTED_REACTION:SPELL_CREATE_AETHER_BLOCKS]
	[PERMITTED_REACTION:SPELL_CREATE_AETHER_GEM]
	[PERMITTED_REACTION:SPELL_CREATE_AETHER_LOG]
	[PERMITTED_REACTION:SPELL_CREATE_AETHER_BARS]
	[PERMITTED_REACTION:SPELL_CREATE_AETHER_AXE]
	[PERMITTED_REACTION:SPELL_CREATE_AETHER_SPEAR]
	[PERMITTED_REACTION:SPELL_CREATE_AETHER_SWORD]
	[PERMITTED_REACTION:SPELL_CREATE_AETHER_HAMMER]
	[PERMITTED_REACTION:SPELL_CREATE_AETHER_MACE]
	[PERMITTED_REACTION:SPELL_CREATE_AETHER_CROSSBOW]
	[PERMITTED_REACTION:SPELL_CREATE_AETHER_CROSSBOW_BOLTS]
	[PERMITTED_REACTION:SPELL_CREATE_AETHER_SHIELD]
	[PERMITTED_REACTION:SPELL_CREATE_AETHER_HELM]
	[PERMITTED_REACTION:SPELL_CREATE_AETHER_BREASTPLATE]
	[PERMITTED_REACTION:SPELL_CREATE_AETHER_MAILSHIRT]
	[PERMITTED_REACTION:SPELL_CREATE_AETHER_LEGGINGS]
	[PERMITTED_REACTION:SPELL_CREATE_AETHER_HIGH_BOOTS]

	[ANIMAL]
		[ANIMAL_TOKEN:SPELL_FAMILIAR_MAMMALS]
		[ANIMAL_ALWAYS_PET]
		[ANIMAL_ALWAYS_PRESENT]
	[ANIMAL]
		[ANIMAL_TOKEN:GIGGLING_TOAD]
		[ANIMAL_ALWAYS_PET]
		[ANIMAL_ALWAYS_PRESENT]
	[ANIMAL]
		[ANIMAL_TOKEN:SPELL_POTION_CREATURE]
		[ANIMAL_CASTE_TOKEN:RECUPERATION]
		[ANIMAL_ALWAYS_PRESENT]
	[ANIMAL]
		[ANIMAL_TOKEN:SPELL_POTION_CREATURE]
		[ANIMAL_CASTE_TOKEN:RESIST_DISEASE]
		[ANIMAL_ALWAYS_PRESENT]
	[ANIMAL]
		[ANIMAL_TOKEN:SPELL_POTION_CREATURE]
		[ANIMAL_CASTE_TOKEN:REGENERATION]
		[ANIMAL_ALWAYS_PRESENT]
	[ANIMAL]
		[ANIMAL_TOKEN:SPELL_BASIN_BASIC]
		[ANIMAL_CASTE_TOKEN:CLEANING]
		[ANIMAL_ALWAYS_PET]
		[ANIMAL_ALWAYS_PRESENT]
	[ANIMAL]
		[ANIMAL_TOKEN:SPELL_BASIN_BASIC]
		[ANIMAL_CASTE_TOKEN:HEALING]
		[ANIMAL_ALWAYS_PET]
		[ANIMAL_ALWAYS_PRESENT]
	[ANIMAL]
		[ANIMAL_TOKEN:SPELL_BASIN_BASIC]
		[ANIMAL_CASTE_TOKEN:ICETHROW]
		[ANIMAL_ALWAYS_PET]
		[ANIMAL_ALWAYS_PRESENT]
	[ANIMAL]
		[ANIMAL_TOKEN:SPELL_BASIN_BASIC]
		[ANIMAL_CASTE_TOKEN:FIREBALL]
		[ANIMAL_ALWAYS_PET]
		[ANIMAL_ALWAYS_PRESENT]
	[ANIMAL]
		[ANIMAL_TOKEN:SPELL_BASIN_BASIC]
		[ANIMAL_CASTE_TOKEN:WEBBING]
		[ANIMAL_ALWAYS_PET]
		[ANIMAL_ALWAYS_PRESENT]

This will make the magic studying mechanic available in fortress mode, and allow spellbooks to appear in bags of junk in adventure mode. You can also paste that in the definitions of any modded entities you have. Even without doing that, the magic effects will be available to a clan of dwarvish wizards that will appear in your world and can be played as a fortress or adventurer. Their noble positions are different from the mountain dwarves but should be playable. Keep in mind that these changes don't take effect until you generate a new world.

[b][u]IMPORTANT:[/u][/b] [b]There is also a "civ set" folder in the "vanilla entity and extra info" now containing new races and civs that already interact with this mod. You must move its contents out into the raw/objects folder for them to take effect just like the modified entity_default.txt file, otherwise the game won't read them. Or delete the folder entirely if you have no intention of using these.[/b]


Directions on how to get started in adventure mode:
You'll first want to find or make a slate. There is a reaction to produce one under the spellcrafts - items menu.
You will then want to make aether salts. There is a menu for these that includes many different reactions depending on what components you have available.
There is also a reaction to produce rough gems which are one of the common components in making aether salt.
Once you have both aether salts and a slate, you can perform the "study magic in general" reaction under the same category. This will consume the aether salts, not the slate, and has a fair chance to produce one or more of the essences of spells.
Eat the essences to gain their respective spells.
In the process of producing these essences though there is a much smaller chance of generating a "magic aura" which will vaporize instantly upon performing any action. If you're quick, you can throw these away from you and they will vaporize where they land. If not, there is a chance you will inhale their vapors and be afflicted by their syndromes. These should not be fatal, but they can be a nuissence. If you have high disease resistance, your chances of being affected are greatly reduced.
There is also a spell specifically for increasing your disease resistance attribute. This should help protect you further. If you search in piles of loot or warehouses you can also find an aether focuser, which is used to study aetherial magic, the first school available.
Other schools will exist and ritual items for them also must be acquired.

Fortress mode is much the same:
Your dwarves can produce a slate tool from any hard material such as stone or wood, and build a magician's studio
in the magicians studio you have access to more or less all the same reactions you do in adventure mode.
[b]Only dwarves with the alchemy labor enabled will perform these reactions.[/b]
The essences produced can be stored in food stockpiles under the "plant cheese" category.
Essences dont rot, but can be eaten by vermin, so it is advised that whatever stockpile they're to be stored in is protected by at least one cat (or other vermin-hunting critter)
Any dwarves could end up eating your essences. If this is a problem, you can store them in a locked room and drop them onto the stockpile from above by dumping 
them or something. Then only allow dwarves you want to be able to perform these spells in. The essence being a food item also allows you to control which essences dwarves are allowed to eat. You can forbid or dispose of any that you dont want dwarves consuming, for instance restricting any fire spells.

In fort mode you can make potions at the alchemy laboratory. Potions will require plant and inorganic components which you will have to source on your own. The implementation is fairly basic at the moment.
Dwarves get special runic traps made at the rune circle. These will perform very well against weak opponents like animals and goblins.

In either mode, you also have the choice to conjure items by using an aether salt component. These include basic materials and food products.

If you have questions, comments, or bugs to report, post in the bay12forums thread and I'll get back to you as soon as possible:
http://www.bay12forums.com/smf/index.php?topic=149426.0