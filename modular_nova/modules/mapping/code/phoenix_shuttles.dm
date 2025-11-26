/*----- PHOENIX COLLECTIVE - "PERSONAL WHITESHIP" Shuttle Code -----*/
/datum/map_template/shuttle/whiteship/personalshuttle_phoenix
	suffix = "personalshuttle_phoenix"
	name = "Phoenix Collective Shuttle"
	description = "A retrofitted and upgraded version of the Personal Travel Shuttle, utilized by Phoenix Collective officials and non-emergency crews."
	admin_notes = "Has super fucking overpowered shit, you really shouldn't spawn this for non-admins."
/*----- End of PHOENIX WHITESHIP Shuttle Code -----*/

/*----- PHOENIX COLLECTIVE - "AXION PARIAH" Shuttle Code -----*/
/area/shuttle/phoenix
	name = "Axion Pariah"

/datum/map_template/shuttle/planetary/phoenix
	prefix = "_maps/shuttles/nova/phoenix/"
	suffix = "phoenix_arrival_shuttle"
	name = "\"Axion Pariah\" Phoenix Collective Transport Shuttle"
	description = "An unarmed non-military space shuttle for transport of Phoenix Collective Imperials and/or civilian crews."

/datum/map_template/shuttle/planetary/phoenix/axionlocked
	prefix = "_maps/shuttles/nova/phoenix/"
	suffix = "phoenix_arrival_shuttle_station"
	name = "Station-Locked \"Axion Pariah\" Phoenix Collective Transport Shuttle"
	description = "This Axion Pariah has been modified to be locked to a station's arrivals dock and transfer satellite."
	admin_notes = "Doesn't function properly on maps other than Dark Phoenix."

/obj/machinery/computer/shuttle/phoenix
	name = "\improper Axion Pariah control console"
	desc = "Used to control an Axion Pariah model shuttle."
	circuit = /obj/item/circuitboard/computer/phoenix
	shuttleId = "phoenix_arrival_shuttle"
	possible_destinations = "phoenix_general_custom;phoenix_general_home;phoenix_arrivals_stationary;phoenix_arrivals_transfer;whiteship_home;ferry_home;syndicate_ne;syndicate_nw;syndicate_n;syndicate_se;syndicate_sw;syndicate_s"
	req_access = list(ACCESS_CENT_GENERAL)

/obj/machinery/computer/shuttle/phoenix/axionlocked
	circuit = /obj/item/circuitboard/computer/phoenix/axionlocked
	shuttleId = "phoenix_arrival_shuttle_station"
	possible_destinations = "phoenix_arrivals_stationary;phoenix_arrivals_transfer"
	req_access = null

/obj/machinery/computer/camera_advanced/shuttle_docker/phoenix
	name = "\improper Axion Pariah navigation computer"
	desc = "The navigation console for an Axion Pariah model shuttle."
	shuttleId = "phoenix_arrival_shuttle"
	lock_override = CAMERA_LOCK_STATION
	shuttlePortId = "phoenix_general_custom"
	jump_to_ports = list( "phoenix_general_home" = 1, "syndicate_ne" = 1, "syndicate_nw" = 1, "syndicate_n" = 1, "syndicate_se" = 1, "syndicate_sw" = 1, "syndicate_s" = 1, "ferry_home" = 1, )
	view_range = 12
	zlink_range = 1
	move_up_action = /datum/action/innate/camera_multiz_up
	move_down_action = /datum/action/innate/camera_multiz_down
	req_access = list(ACCESS_CENT_GENERAL)

/obj/item/circuitboard/computer/phoenix
	name = "Axion Pariah Control Console (Computer Board)"
	build_path = /obj/machinery/computer/shuttle/phoenix

/obj/item/circuitboard/computer/phoenix/axionlocked
	name = "Station-Locked Axion Pariah Control Console (Computer Board)"
	build_path = /obj/machinery/computer/shuttle/phoenix/axionlocked

/obj/item/gps/computer/space/phoenix
	name = "\improper Phoenix Collective GPS transponder"
	icon = 'modular_nova/modules/mapping/icons/machinery/gps_computer_x32.dmi'	//needs its own file for pixel size ;-;
	gpstag = "*PC - AXIPAR"
	pixel_y = 0

/*----- End of AXION PARIAH Shuttle Code -----*/

/*----- PHOENIX COLLECTIVE - "BLACK KNIFE" Shuttle Code -----*/
/area/shuttle/phoenix/ert
	name = "Black Knife"

/area/shuttle/phoenix/ert/common
	name = "Black Knife Common Room"

/area/shuttle/phoenix/ert/engine/left
	name = "Black Knife Left Engine Maintenance"

/area/shuttle/phoenix/ert/engine/right
	name = "Black Knife Right Engine Maintenance"

/area/shuttle/phoenix/ert/medbay
	name = "Black Knife Emergency Medbay"

/area/shuttle/phoenix/ert/armory
	name = "Black Knife Armory"

/area/shuttle/phoenix/ert/bridge
	name = "Black Knife Bridge"

/datum/map_template/shuttle/ert/phoenix
	prefix = "_maps/shuttles/nova/phoenix/"
	suffix = "ert_phoenix_shuttle"
	name = "\"Black Knife\" Phoenix Collective Imperial Shuttle"
	description = "The \"Black Knife\" Imperial shuttle is the standard for military response crews. Supplied with elite technology and plenty of resources for any ERT, \
		this is the go-to for many of the Phoenix Collective's own emergency responses. Contains crew commons, a bridge w/ sleeper units, a stocked armory, and an emergency \
		medical bay."
	admin_notes = "This is meant for military interventions and should not be used for most ERT situations. Shuttle might be too large to fit in the dock(s) of some stations."

/obj/machinery/computer/shuttle/phoenix/ert
	name = "\improper Black Knife control console"
	desc = "Used to control a Black Knife model shuttle."
	circuit = /obj/item/circuitboard/computer/phoenix/ert
	shuttleId = "phoenix_ert_shuttle"
	possible_destinations = "phoenix_ert_custom;phoenix_general_custom;phoenix_general_home;whiteship_home;ferry_home;syndicate_ne;syndicate_nw;syndicate_n;syndicate_se;syndicate_sw;syndicate_s"

/obj/item/circuitboard/computer/phoenix/ert
	name = "Black Knife Control Console (Computer Board)"
	build_path = /obj/machinery/computer/shuttle/phoenix

/obj/machinery/computer/camera_advanced/shuttle_docker/phoenix/ert
	name = "\improper Black Knife navigation computer"
	desc = "The navigation console for a Black Knife model shuttle."
	shuttleId = "phoenix_ert_shuttle"
	shuttlePortId = "phoenix_ert_custom"
	jump_to_ports = list( "phoenix_general_home" = 1, "syndicate_ne" = 1, "syndicate_nw" = 1, "syndicate_n" = 1, "syndicate_se" = 1, "syndicate_sw" = 1, "syndicate_s" = 1, "ferry_home" = 1, )

/obj/item/gps/computer/space/phoenix/ert
	gpstag = "*PC - BLKNIF"
