/datum/species/synthetic/phoenix
	name = "Synthetic Humanoid"
	id = SPECIES_PCSYNTH
	say_mod = "says"
	inherent_traits = list(
		TRAIT_CAN_STRIP,
		TRAIT_ADVANCEDTOOLUSER,
		TRAIT_RADIMMUNE,
		TRAIT_NOBREATH,
		//TRAIT_TOXIMMUNE, // EXOBYTECHNOVA UPDATE: Unfortunately, being in the gray area between man and machine has downsides.
		TRAIT_GENELESS,
		TRAIT_STABLEHEART,
		TRAIT_LIMBATTACHMENT,
		TRAIT_NO_HUSK,
		TRAIT_OXYIMMUNE,
		TRAIT_LITERATE,
		//TRAIT_NOCRITDAMAGE, // We do our own handling of crit damage. (EXOBYTECHNOVA UPDATE: No you don't, get on the floor, Kira.)
		TRAIT_ROBOTIC_DNA_ORGANS,
		TRAIT_DETECTIVES_TASTE, // EXOBYTECHNOVA UPDATE: Detroit become human moment
		TRAIT_KNOW_ENGI_WIRES, // EXOBYTECHNOVA UPDATE: Detroit become human moment
		TRAIT_SYNTHETIC,
	)
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_MAGIC | MIRROR_PRIDE | ERT_SPAWN | SLIME_EXTRACT
	exotic_bloodtype = /datum/blood_type/haemocyanin // EXOBYTECHNOVA UPDATE: Detroit become human moment
	digitigrade_customization = DIGITIGRADE_OPTIONAL
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

	perk_descriptions += list(list( //tryin to keep traits minimal since synths will get a lot of traits when my upstream traits pr is merged
		SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
		SPECIES_PERK_ICON = "robot",
		SPECIES_PERK_NAME = "Synthetic Benefits",
		SPECIES_PERK_DESC = "Unlike organics, you DON'T explode when faced with a vacuum! Additionally, your chassis is built with such strength as to \
		grant you immunity to OVERpressure! Just make sure extreme heat doesn't fry your circuitry. While you are stronger against cold than other synthetics, \
		you unfortunately possess other weaknesses."
	))

	perk_descriptions += list(list(
		SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
		SPECIES_PERK_ICON = "robot",
		SPECIES_PERK_NAME = "Biosynth Knowledge",
		SPECIES_PERK_DESC = "[plural_form] are capable of identifying chemicals by taste, and have innate knowledge of Engineering wire configurations."
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
		SPECIES_PERK_DESC = "Unfortunately, Biosynths are more vulnerable than other Synthetic Humanoids when faced with critical damage, and will be forced to \
		collapse like most other organics. Biosynths also lack immunity to toxins, but thankfully remain immune to hazardous radiation, in part due to lacking genes."
	))

	return perk_descriptions
