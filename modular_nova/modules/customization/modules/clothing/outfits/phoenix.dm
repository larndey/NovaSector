/// ------------------------------------------------------------------------------------------ ///
/// PHOENIX IMPERIAL PERSONNEL OUTFITS
/// ------------------------------------------------------------------------------------------ ///

/// ASSISTANT DEFAULT OUTFIT
/datum/outfit/phoenix
	name = "Phoenix Collective Imperial"

	id = /obj/item/card/id/advanced/black/phoenix
	belt = /obj/item/modular_computer/pda/assistant
	uniform = /obj/item/clothing/under/misc/nova/utility
	shoes = /obj/item/clothing/shoes/jackboots/peacekeeper
	gloves = /obj/item/clothing/gloves/color/black
	back = /obj/item/storage/backpack/industrial/frontier_colonist

/// ASSISTANT PLASMAMAN OUTFIT
/datum/outfit/phoenix/pm
	name = "Phoenix Collective Imperial (Plasmaman)"

	head = /obj/item/clothing/head/helmet/space/plasmaman/security
	uniform = /obj/item/clothing/under/plasmaman/black
	gloves = /obj/item/clothing/gloves/color/plasmaman/black
	mask = /obj/item/clothing/mask/gas/sechailer/plasmaman
	r_pocket = /obj/item/tank/internals/plasmaman/belt/full

/// AUTOMATIC MINDSHIELD IMPLANTING
/datum/outfit/phoenix/post_equip(mob/living/carbon/human/phoenixguy, visuals_only = FALSE)
	if(visuals_only)
		return
	var/obj/item/implant/mindshield/mindshield = new /obj/item/implant/mindshield(phoenixguy)
	mindshield.implant(phoenixguy, null, silent = TRUE)

	var/obj/item/card/id/ID = phoenixguy.wear_id
	ID.registered_name = phoenixguy.real_name
	ID.update_label()

/// ------------------------------------------------------------------------------------------ ///
/// EMERGENCY RESPONSE TEAMS
/// ------------------------------------------------------------------------------------------ ///

/datum/outfit/phoenix/ert/command
	name = "Phoenix Collective ERT - Commander"

	id = /obj/item/card/id/advanced/black/phoenix/ert/cmdr
	belt = /obj/item/storage/medkit/frontier/phoenix/stocked
	suit = /obj/item/clothing/suit/armor/vest/sol/marine/mk2
	suit_store = /obj/item/gun/ballistic/automatic/pulse_rifle/phoenix
	head = /obj/item/clothing/head/helmet/solfed/mk2
	uniform = /obj/item/clothing/under/rank/security/nova/utility
	shoes = /obj/item/clothing/shoes/winterboots/ice_boots/eva
	gloves = /obj/item/clothing/gloves/tackler/combat/insulated
	back = /obj/item/mod/control/pre_equipped/phoenix/command
	box = /obj/item/storage/box/survival/centcom
	ears = /obj/item/radio/headset/phoenix/ert/cmdr
	glasses = /obj/item/clothing/glasses/hud/health/night/science
	mask = /obj/item/clothing/mask/gas/sechailer
	l_pocket = /obj/item/melee/energy/sword/saber/red
	r_pocket = /obj/item/tank/internals/emergency_oxygen/double
	backpack_contents = list(
		/obj/item/gun/ballistic/automatic/pistol/plasma_marksman = 1,
		/obj/item/ammo_box/magazine/pulse/extended = 3,
		/obj/item/ammo_box/magazine/recharge/plasma_battery = 2,
		/obj/item/storage/box/alienhandcuffs = 1,
		/obj/item/storage/box/nri_flares = 1,
		/obj/item/flashlight/seclite = 1,
		/obj/item/beamout_tool = 1,
		/obj/item/modular_computer/pda/ceti = 1,
	)
	l_hand = null
	r_hand = null

/datum/outfit/phoenix/ert/command/pm
	name = "Phoenix Collective ERT - Commander (Plasmaman)"

	head = /obj/item/clothing/head/helmet/space/plasmaman/security
	uniform = /obj/item/clothing/under/plasmaman/security
	gloves = /obj/item/clothing/gloves/color/plasmaman/black
	mask = /obj/item/clothing/mask/gas/sechailer/plasmaman
	r_pocket = /obj/item/tank/internals/plasmaman/belt/full

/datum/outfit/phoenix/ert/security
	name = "Phoenix Collective ERT - Security"

	id = /obj/item/card/id/advanced/black/phoenix/ert/sec
	belt = /obj/item/storage/medkit/frontier/phoenix/stocked
	suit = /obj/item/clothing/suit/armor/vest/sol/marine/mk2
	suit_store = /obj/item/gun/ballistic/automatic/pulse_rifle/phoenix
	head = /obj/item/clothing/head/helmet/solfed/mk2
	uniform = /obj/item/clothing/under/rank/security/nova/utility
	shoes = /obj/item/clothing/shoes/winterboots/ice_boots/eva
	gloves = /obj/item/clothing/gloves/tackler/combat/insulated
	back = /obj/item/mod/control/pre_equipped/phoenix/security
	box = /obj/item/storage/box/survival/centcom
	ears = /obj/item/radio/headset/phoenix/ert
	glasses = /obj/item/clothing/glasses/hud/health/night/science
	l_pocket = /obj/item/melee/energy/sword/saber/red
	r_pocket = /obj/item/tank/internals/emergency_oxygen/double
	mask = /obj/item/clothing/mask/gas/sechailer
	backpack_contents = list(
		/obj/item/ammo_box/magazine/pulse/extended = 4,
		/obj/item/gun/energy/disabler/smg = 1,
		/obj/item/storage/box/alienhandcuffs = 1,
		/obj/item/storage/box/fragnades = 1,
		/obj/item/storage/box/flashbangs = 1,
		/obj/item/storage/box/nri_flares = 1,
		/obj/item/flashlight/seclite = 1,
		/obj/item/beamout_tool = 1,
		/obj/item/modular_computer/pda/ceti = 1,
	)
	l_hand = null
	r_hand = null

/datum/outfit/phoenix/ert/security/pm
	name = "Phoenix Collective ERT - Security (Plasmaman)"

	head = /obj/item/clothing/head/helmet/space/plasmaman/security
	uniform = /obj/item/clothing/under/plasmaman/security
	gloves = /obj/item/clothing/gloves/color/plasmaman/black
	mask = /obj/item/clothing/mask/gas/sechailer/plasmaman
	r_pocket = /obj/item/tank/internals/plasmaman/belt/full

/datum/outfit/phoenix/ert/medic
	name = "Phoenix Collective ERT - Medical"

	id = /obj/item/card/id/advanced/black/phoenix/ert/med
	belt = /obj/item/storage/belt/medical/ert
	suit = /obj/item/clothing/suit/armor/vest/sol/marine/mk2
	suit_store = /obj/item/gun/medbeam
	head = /obj/item/clothing/head/helmet/solfed/mk2
	uniform = /obj/item/clothing/under/rank/security/nova/utility
	shoes = /obj/item/clothing/shoes/winterboots/ice_boots/eva
	gloves = /obj/item/clothing/gloves/tackler/combat/insulated
	back = /obj/item/mod/control/pre_equipped/phoenix/medical/surgical
	box = /obj/item/storage/box/survival/centcom
	ears = /obj/item/radio/headset/phoenix/ert
	glasses = /obj/item/clothing/glasses/hud/health/night/science
	mask = /obj/item/clothing/mask/gas/sechailer
	l_pocket = /obj/item/melee/energy/sword/saber/red
	r_pocket = /obj/item/tank/internals/emergency_oxygen/double
	backpack_contents = list(
		/obj/item/storage/medkit/frontier/phoenix/stocked = 1,
		/obj/item/storage/medkit/frontier/phoenix/toxin/stocked = 1,
		/obj/item/storage/medkit/frontier/phoenix/oxygen/stocked = 1,
		/obj/item/bodybag/stasis = 2,
		/obj/item/gun/ballistic/automatic/pistol/plasma_thrower = 1,
		/obj/item/ammo_box/magazine/recharge/plasma_battery = 3,
		/obj/item/storage/box/nri_flares = 1,
		/obj/item/flashlight/seclite = 1,
		/obj/item/beamout_tool = 1,
		/obj/item/modular_computer/pda/ceti = 1,
	)
	l_hand = null
	r_hand = null

/datum/outfit/phoenix/ert/medic/pm
	name = "Phoenix Collective ERT - Medical (Plasmaman)"

	head = /obj/item/clothing/head/helmet/space/plasmaman/security
	uniform = /obj/item/clothing/under/plasmaman/security
	gloves = /obj/item/clothing/gloves/color/plasmaman/black
	mask = /obj/item/clothing/mask/gas/sechailer/plasmaman
	r_pocket = /obj/item/tank/internals/plasmaman/belt/full

/datum/outfit/phoenix/ert/engie
	name = "Phoenix Collective ERT - Engineering"

	id = /obj/item/card/id/advanced/black/phoenix/ert/eng
	belt = /obj/item/storage/belt/utility/chief/full
	suit = /obj/item/clothing/suit/armor/vest/sol/marine/mk2
	suit_store = /obj/item/gun/ballistic/automatic/napad
	head = /obj/item/clothing/head/helmet/solfed/mk2
	uniform = /obj/item/clothing/under/rank/security/nova/utility
	shoes = /obj/item/clothing/shoes/winterboots/ice_boots/eva
	gloves = /obj/item/clothing/gloves/tackler/combat/insulated
	back = /obj/item/mod/control/pre_equipped/phoenix/engineer
	box = /obj/item/storage/box/survival/centcom
	ears = /obj/item/radio/headset/phoenix/ert
	glasses = /obj/item/clothing/glasses/hud/health/night/science
	mask = /obj/item/clothing/mask/gas/sechailer
	l_pocket = /obj/item/melee/energy/sword/saber/red
	r_pocket = /obj/item/tank/internals/emergency_oxygen/double
	backpack_contents = list(
		/obj/item/ammo_box/magazine/napad = 6,
		/obj/item/construction/rcd/loaded/upgraded = 1,
		/obj/item/lightreplacer/blue = 1,
		/obj/item/storage/box/nri_flares = 1,
		/obj/item/flashlight/seclite = 1,
		/obj/item/beamout_tool = 1,
		/obj/item/modular_computer/pda/ceti = 1,
	)
	l_hand = null
	r_hand = null

/datum/outfit/phoenix/ert/engie/pm
	name = "Phoenix Collective ERT - Engineering (Plasmaman)"

	head = /obj/item/clothing/head/helmet/space/plasmaman/security
	uniform = /obj/item/clothing/under/plasmaman/security
	gloves = /obj/item/clothing/gloves/color/plasmaman/black
	mask = /obj/item/clothing/mask/gas/sechailer/plasmaman
	r_pocket = /obj/item/tank/internals/plasmaman/belt/full
