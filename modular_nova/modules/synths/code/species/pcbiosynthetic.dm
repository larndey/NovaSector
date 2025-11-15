/datum/species/synthetic/phoenix
	name = "Synthetic Humanoid"
	id = SPECIES_PCSYNTH
	say_mod = "says"
	inherent_traits = list(
		TRAIT_CAN_STRIP,
		TRAIT_ADVANCEDTOOLUSER,
		//TRAIT_RADIMMUNE, // EXOBYTECHNOVA UPDATE: Unfortunately, being in the gray area between man and machine has downsides.
		TRAIT_NOBREATH,
		//TRAIT_TOXIMMUNE, // EXOBYTECHNOVA UPDATE: Unfortunately, being in the gray area between man and machine has downsides.
		//TRAIT_GENELESS, // EXOBYTECHNOVA UPDATE: Unfortunately, being in the gray area between man and machine has downsides.
		TRAIT_STABLEHEART,
		TRAIT_LIMBATTACHMENT,
		TRAIT_NO_HUSK,
		TRAIT_OXYIMMUNE,
		TRAIT_LITERATE,
		//TRAIT_NOCRITDAMAGE, // We do our own handling of crit damage. (EXOBYTECHNOVA UPDATE: No you don't, get on the floor, Kira.)
		TRAIT_ROBOTIC_DNA_ORGANS,
		TRAIT_DETECTIVES_TASTE, // EXOBYTECHNOVA UPDATE: Detroit become human moment
		TRAIT_SYNTHETIC,
	)
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_MAGIC | MIRROR_PRIDE | ERT_SPAWN | SLIME_EXTRACT
	exotic_bloodtype = /datum/blood_type/haemocyanin // EXOBYTECHNOVA UPDATE: Detroit become human moment
	coldmod = 0.1
	heatmod = 1.8

/datum/species/synthetic/phoenix/get_default_mutant_bodyparts()
	return list(
		"ears" = list("None", FALSE),
		"tail" = list("None", FALSE),
		"ears" = list("None", FALSE),
		"legs" = list("Normal Legs", FALSE),
		"snout" = list("None", FALSE),
		MUTANT_SYNTH_ANTENNA = list("None", FALSE),
		MUTANT_SYNTH_SCREEN = list("None", FALSE),
		MUTANT_SYNTH_CHASSIS = list("Human Chassis", FALSE),
		MUTANT_SYNTH_HEAD = list("Human Head", FALSE),
	)

/datum/species/synthetic/phoenix/create_pref_unique_perks()
	var/list/perk_descriptions = list()

	perk_descriptions += list(list( //tryin to keep traits minimal since synths will get a lot of traits when my upstream traits pr is merged (EXONOVA UPD: shut the fuck up)
		SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
		SPECIES_PERK_ICON = "robot",
		SPECIES_PERK_NAME = "Biosynthetic Benefits",
		SPECIES_PERK_DESC = "Unlike most other organics, you DON'T explode when faced with a vacuum! Additionally, your chassis is built with such strength as to \
		grant you immunity to OVERpressure! Just make sure extreme heat doesn't fry your circuitry. While you are stronger against cold than other synths, you do \
		possess other weaknesses."
	))

	perk_descriptions += list(list(
		SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
		SPECIES_PERK_ICON = "robot",
		SPECIES_PERK_NAME = "Android's Taste",
		SPECIES_PERK_DESC = "[plural_form] are capable of identifying chemicals by taste, even when playing roles other than Detective."
	))

	perk_descriptions += list(list(
		SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
		SPECIES_PERK_ICON = "star-of-life",
		SPECIES_PERK_NAME = "Unhuskable",
		SPECIES_PERK_DESC = "[plural_form] can't be husked, disappointing changelings galaxy-wide.",
	))

	perk_descriptions += list(list(
		SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
		SPECIES_PERK_ICON = "music",
		SPECIES_PERK_NAME = "Tone Synthesizer",
		SPECIES_PERK_DESC = "[plural_form] can sing musical tones using an internal synthesizer.",
	))

	perk_descriptions += list(list(
		SPECIES_PERK_TYPE = SPECIES_NEUTRAL_PERK,
		SPECIES_PERK_ICON = "robot",
		SPECIES_PERK_NAME = "Synthetic Oddities",
		SPECIES_PERK_DESC = "[plural_form] are unable to gain nutrition from traditional foods. Instead, you must either consume welding fuel or extend a \
		wire from your arm to draw power from an APC. In addition to this, welders and wires are your sutures and mesh and only specific chemicals even metabolize inside \
		of you. This ranges from whiskey, to synthanol, to various obscure medicines. Finally, you suffer from a set of wounds exclusive to synthetics."
	))

	perk_descriptions += list(list(
		SPECIES_PERK_TYPE = SPECIES_NEGATIVE_PERK,
		SPECIES_PERK_ICON = "robot",
		SPECIES_PERK_NAME = "Biological Vulnerabilities",
		SPECIES_PERK_DESC = "Unfortunately, [plural_form] are more vulnerable than other synths when faced with critical damage. They still fall to the ground \
		like most other organics."
	))

	perk_descriptions += list(list(
		SPECIES_PERK_TYPE = SPECIES_NEGATIVE_PERK,
		SPECIES_PERK_ICON = "robot",
		SPECIES_PERK_NAME = "Synthetic Genes",
		SPECIES_PERK_DESC = "Being in the gray area between man and machine, [plural_form] possess organic genetics, making them vulnerable to toxins, radiation, \
		and genetic scrambling. Other synths remain immune to such inconveniences. Better bring a hazard suit."
	))

	return perk_descriptions
