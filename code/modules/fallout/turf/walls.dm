//Fallout 13 general destructible walls directory

/turf/closed/wall/f13/
	name = "glitch"
	desc = "<font color='#6eaa2c'>You suddenly realize the truth - there is no spoon.<br>Something has caused a glitch in the simulation.</font>"
	icon = 'icons/fallout/turfs/walls.dmi'
	icon_state = "matrix"

/turf/closed/wall/f13/ReplaceWithLattice()
	ChangeTurf(baseturfs)

/turf/closed/wall/f13/ruins
	name = "ruins"
	desc = "All what has left from the good old days."  //What is this fucking english? ~TK
	icon = 'icons/turf/walls/f13composite.dmi'
	icon_state = "ruins"
	icon_type_smooth = "ruins"
	hardness = 70
	explosion_block = 2
	smooth = SMOOTH_TRUE
	//	disasemblable = 0
	girder_type = 0
	baseturfs = /turf/open/indestructible/ground/outside/ruins
	sheet_type = null
	canSmoothWith = list(/turf/closed/wall/f13/ruins, /turf/closed/wall)
	unbreakable = 0

/turf/closed/wall/f13/ruins/add_debris_element()
	AddElement(/datum/element/debris, DEBRIS_ROCK, -10, 5, 1)

/turf/closed/wall/f13/wood
	name = "wooden wall"
	desc = "A traditional wooden wall."
	icon = 'icons/fallout/turfs/walls/wood.dmi'
	icon_state = "wood0"
	icon_type_smooth = "wood"
	hardness = 60
	smooth = SMOOTH_OLD
	unbreakable = 0
	baseturfs = /turf/open/floor/plating/wooden
	sheet_type = /obj/item/stack/sheet/mineral/wood
	sheet_amount = 2
	girder_type = 0
	canSmoothWith = list(/turf/closed/wall/f13/wood, /turf/closed/wall, /obj/structure/falsewall/wood/f13)

/turf/closed/wall/f13/wood/add_debris_element()
	AddElement(/datum/element/debris, DEBRIS_WOOD, -10, 5)

/turf/closed/wall/f13/wood/house
	name = "house wall"
	desc = "A weathered pre-War house wall."
	icon = 'icons/fallout/turfs/walls/house.dmi'
	icon_state = "house0"
	icon_type_smooth = "house"
	hardness = 50
	var/broken = 0
	canSmoothWith = list(/turf/closed/wall/f13/wood/house, /turf/closed/wall/f13/wood/house/broken, /turf/closed/wall, /turf/closed/wall/f13/wood/house/clean)

/turf/closed/wall/f13/wood/house/broken
	broken = 1
	damage = 21
	icon_state = "house0-broken"

/turf/closed/wall/f13/wood/house/broken/attackby(obj/item/W, mob/user, params)
	if(istype(W, /obj/item/stack/sheet/mineral/wood))
		var/obj/item/stack/sheet/mineral/wood/I = W
		if(I.amount < 2)
			return
		if(!do_after(user, 5 SECONDS, FALSE, src))
			to_chat(user, span_warning("You must stand still to fix the wall!"))
			return
		W.use(2)
		ChangeTurf(/turf/closed/wall/f13/wood/house)
	. = ..()


/turf/closed/wall/f13/wood/house/take_damage(dam)
	if(damage + dam > hardness/2)
		broken = 1
	..()

/turf/closed/wall/f13/wood/house/relative()
	icon_state = "[icon_type_smooth][junction][broken ? "-broken" : ""]"

/turf/closed/wall/f13/wood/house/update_icon()
	if(broken)
		set_opacity(0)
	..()

turf/closed/wall/f13/wood/house/update_damage_overlay()
	if(broken)
		return
	..()

/turf/closed/wall/f13/wood/house/clean
	icon_state = "house0-clean"

/turf/closed/wall/f13/wood/house/clean/relative()
	icon_state = "[icon_type_smooth][junction]-clean"

/turf/closed/wall/f13/wood/interior
	name = "interior wall"
	desc = "Interesting, what kind of material they have used - these wallpapers still look good after all the centuries..."
	icon = 'icons/fallout/turfs/walls/interior.dmi'
	icon_state = "interior0"
	icon_type_smooth = "interior"
	hardness = 10
	smooth = SMOOTH_OLD
	canSmoothWith = list(/turf/closed/wall/f13/wood/interior, /turf/closed/wall)

/turf/closed/wall/f13/store
	name = "store wall"
	desc = "A pre-War store wall made of solid concrete."
	icon = 'icons/turf/walls/f13store.dmi'
	icon_state = "store"
	icon_type_smooth = "store"
	hardness = 80
	smooth = SMOOTH_TRUE
	//	disasemblable = 0
	baseturfs = /turf/open/indestructible/ground/outside/ruins
	girder_type = 0
	sheet_type = null
	canSmoothWith = list(/turf/closed/wall/f13/store, /turf/closed/wall/f13/store/constructed, /turf/closed/wall,)

/turf/closed/wall/f13/tentwall
	name = "tent wall"
	desc = "The walls of a portable tent."
	icon = 'icons/fallout/turfs/walls/tent.dmi'
	icon_state = "tent0"
	icon_type_smooth = "tent"
	hardness = 10
	unbreakable = 0
	smooth = SMOOTH_OLD
	//	disasemblable = 0
	baseturfs = /turf/open/indestructible/ground/outside/ruins
	girder_type = 0
	sheet_type = null
	canSmoothWith = list(/turf/closed/wall/f13/tentwall, /turf/closed/wall)

/turf/closed/wall/f13/scrap
	name = "scrap wall"
	desc = "A wall held together by corrugated metal and prayers."
	icon = 'icons/fallout/turfs/walls/scrap.dmi'
	icon_state = "scrap0"
	icon_type_smooth = "scrap"
	hardness = 80
	smooth = SMOOTH_OLD
	girder_type = 0
	sheet_type = null
	canSmoothWith = list(/turf/closed/wall)

/turf/closed/wall/f13/scrap/red
	icon = 'icons/fallout/turfs/walls/scrap_red.dmi'
	icon_state = "scrapr0"
	icon_type_smooth = "scrapr"

/turf/closed/wall/f13/scrap/blue
	icon = 'icons/fallout/turfs/walls/scrap_blue.dmi'
	icon_state = "scrapb0"
	icon_type_smooth = "scrapb"

/turf/closed/wall/f13/scrap/white
	icon = 'icons/fallout/turfs/walls/scrap_white.dmi'
	icon_state = "scrapw0"
	icon_type_smooth = "scrapw"

/turf/closed/wall/f13/scrap/junk
	name = "junk wall"
	desc = "More a pile of debris and rust than a wall, but it'll hold for now."
	icon = 'icons/fallout/turfs/walls/scrap_rough.dmi'
	icon_state = "scrapro0"
	icon_type_smooth = "scrapro"

/turf/closed/wall/f13/supermart
	name = "supermart wall"
	desc = "A pre-War supermart wall made of reinforced concrete."
	icon = 'icons/turf/walls/f13superstore.dmi'
	icon_state = "supermart"
	icon_type_smooth = "supermart"
	hardness = 90
	explosion_block = 2
	smooth = SMOOTH_TRUE
	baseturfs = /turf/open/indestructible/ground/outside/ruins
	//	disasemblable = 0
	girder_type = 0
	sheet_type = null
	canSmoothWith = list(/turf/closed/wall/f13/supermart, /turf/closed/wall/mineral/concrete, /turf/closed/wall,)

/turf/closed/wall/f13/tunnel
	name = "utility tunnel wall"
	desc = "A sturdy metal wall with various pipes and wiring set inside a special groove."
	icon = 'icons/fallout/turfs/walls/tunnel.dmi'
	icon_state = "tunnel0"
	icon_type_smooth = "tunnel"
	hardness = 100
	smooth = SMOOTH_OLD
	//	disasemblable = 0
	girder_type = 0
	sheet_type = null
	canSmoothWith = list(/turf/closed/wall/f13/tunnel, /turf/closed/wall)

/turf/closed/wall/f13/vault
	name = "vault wall"
	desc = "A sturdy and cold metal wall."
	icon = 'icons/fallout/turfs/walls/vault.dmi'
	icon_state = "vault0"
	icon_type_smooth = "vault"
	hardness = 130
	explosion_block = 5
	smooth = SMOOTH_OLD
	canSmoothWith = list(/turf/closed/wall/f13/vault, /turf/closed/wall/r_wall/f13/vault, /turf/closed/wall)

/turf/closed/wall/r_wall/f13
	name = "glitch"
	desc = "<font color='#6eaa2c'>You suddenly realize the truth - there is no spoon.<br>Something has caused a glitch in the simulation.</font>"
	icon = 'icons/fallout/turfs/walls.dmi'
	icon_state = "matrix"

/turf/closed/wall/r_wall/f13/vault
	name = "vault reinforced wall"
	desc = "A wall built to withstand an atomic explosion."
	icon = 'icons/fallout/turfs/walls/vault_reinforced.dmi'
	icon_state = "vaultrwall0"
	icon_type_smooth = "vaultrwall"
	hardness = 230
	explosion_block = 5
	smooth = SMOOTH_OLD
	canSmoothWith = list(/turf/closed/wall/f13/vault, /turf/closed/wall/r_wall/f13/vault, /turf/closed/wall)

/turf/closed/wall/r_wall/f13vault/add_debris_element()
	AddElement(/datum/element/debris, DEBRIS_SPARKS, -15, 8, 1)

//Sunset custom walls

/turf/closed/wall/f13/sunset/brick_small
	name = "brick wall"
	desc = "A wall made out of solid brick."
	icon = 'modular_sunset/icons/turfs/walls/brick_small.dmi'
	icon_state = "brick0"
	icon_type_smooth = "brick"
	hardness = 80
	smooth = SMOOTH_OLD
	girder_type = 0
	sheet_type = null
	canSmoothWith = list(/turf/closed/wall)

/turf/closed/wall/f13/sunset/brick_small_dark
	name = "brick wall"
	desc = "A wall made out of solid brick."
	icon = 'modular_sunset/icons/turfs/walls/brick_small_dark.dmi'
	icon_state = "brick0"
	icon_type_smooth = "brick"
	hardness = 80
	smooth = SMOOTH_OLD
	girder_type = 0
	sheet_type = null
	canSmoothWith = list(/turf/closed/wall)

/turf/closed/wall/f13/sunset/brick_small_light
	name = "brick wall"
	desc = "A wall made out of solid brick."
	icon = 'modular_sunset/icons/turfs/walls/brick_small_light.dmi'
	icon_state = "brick0"
	icon_type_smooth = "brick"
	hardness = 80
	smooth = SMOOTH_OLD
	girder_type = 0
	sheet_type = null
	canSmoothWith = list(/turf/closed/wall)

//Fallout 13 indestructible walls

/turf/closed/indestructible/f13
	name = "glitch"
	desc = "<font color='#6eaa2c'>You suddenly realize the truth - there is no spoon.<br>Something has caused a glitch in the simulation.</font>"
	icon = 'icons/fallout/turfs/walls.dmi'
	icon_state = "matrix"

/turf/closed/indestructible/f13/subway
	name = "tunnel wall"
	desc = "This wall is made of reinforced concrete.<br>Pre-War engineers knew how to build reliable things."
	icon = 'icons/fallout/turfs/walls/subway.dmi'
	icon_state = "subwaytop"

/turf/closed/indestructible/f13/matrix //The Chosen One from Arroyo!
	name = "matrix"
	desc = "<font color='#6eaa2c'>You suddenly realize the truth - there is no spoon.<br>Digital simulation ends here.</font>"
	icon_state = "matrix"
	var/in_use = FALSE

/turf/closed/indestructible/f13/matrix/MouseDrop_T(atom/dropping, mob/user)
	. = ..()
	if(!isliving(user) || user.incapacitated() || !isliving(dropping))
		return //No ghosts or incapacitated folk allowed to do this.
	if(in_use) // Someone's already going in.
		return
	if(SSmobs.there_is_no_escape)
		to_chat(user, span_warning("This method of escape has been disabled. Sorry! You're allowed to ghost out and respawn though, just ahelp and tell an admin to ditch your body."))
		return
	var/mob/living/departing_mob = dropping
	if(departing_mob != user && departing_mob.client)
		to_chat(user, span_warning("This one retains their free will. It's their choice if they want to depart or not."))
		return
	if(alert("Are you sure you want to [departing_mob == user ? "depart the area for good (you" : "send this person away (they"] will be removed from the current round, the job slot freed)?", "Departing the swamps", "Confirm", "Cancel") != "Confirm")
		return
	if(user.incapacitated() || QDELETED(departing_mob) || (departing_mob != user && departing_mob.client) || get_dist(src, dropping) > 2 || get_dist(src, user) > 2)
		return //Things have changed since the alert happened.
	if(departing_mob.logout_time && departing_mob.logout_time + 2 MINUTES > world.time)
		to_chat(user, span_warning("This mind has only recently departed. Wait at most two minutes before sending this character out of the round."))
		return
	user.visible_message(span_warning("[user] [departing_mob == user ? "is trying to leave the swamps!" : "is trying to send [departing_mob] away!"]"), span_notice("You [departing_mob == user ? "are trying to leave the swamps." : "are trying to send [departing_mob] away."]"))
	icon_state = "matrix_going" // ALERT, WEE WOO
	update_icon()
	in_use = TRUE
	if(!do_after(user, 50, target = src))
		icon_state = initial(icon_state)
		in_use = FALSE
		return
	icon_state = initial(icon_state)
	in_use = FALSE
	update_icon()
	var/dat
	if(ishuman(departing_mob))
		dat = "[key_name(user)] has despawned [departing_mob == user ? "themselves" : departing_mob], job [departing_mob.job], at [AREACOORD(src)]. Contents despawned along:"
	else if(isanimal(departing_mob))
		dat = "[key_name(user)] has despawned [departing_mob == user ? "themselves" : departing_mob], simple animal [departing_mob.type], at [AREACOORD(src)]. Contents despawned along:"
	if(!length(departing_mob.contents))
		dat += " none."
	else
		var/atom/movable/content = departing_mob.contents[1]
		dat += " [content.name]"
		for(var/i in 2 to length(departing_mob.contents))
			content = departing_mob.contents[i]
			dat += ", [content.name]"
		dat += "."
	message_admins(dat)
	log_admin(dat)
	if(departing_mob.stat == DEAD)
		departing_mob.visible_message(span_notice("[user] pushes the body of [departing_mob] over the border. They're someone else's problem now."))
	else
		departing_mob.visible_message(span_notice("[departing_mob == user ? "Out of their own volition, " : "Ushered by [user], "][departing_mob] crosses the border and departs the swamps."))
	
	if(departing_mob.client.is_in_game >= 1)
		// if(departing_mob.client.is_in_game == 2)
		// 	to_chat(world, span_nicegreen("You hear through the grapevine that [departing_mob.name] has left the county."))
		departing_mob.client.is_in_game = 0
	
	departing_mob.despawn()


/turf/closed/indestructible/f13/obsidian //Just like that one game studio that worked on the original game, or that block in Minecraft!
	name = "obsidian"
	desc = "No matter what you do with this rock, there's not even a scratch left on its surface.<br><font color='#7e0707'>You shall not pass!!!</font>"
	icon = 'icons/fallout/turfs/mining.dmi'
	icon_state = "rock1"

/turf/closed/indestructible/f13/obsidian/New()
	..()
	icon_state = "rock[rand(1,6)]"

//Splashscreen
/*
/turf/closed/indestructible/f13/splashscreen
	var/tickerPeriod = 300 //in deciseconds
	var/go/fullDark

turf/closed/indestructible/f13/splashscreen/New()
	.=..()
	name = "Fallout 13"
	desc = "The wasteland is calling!"
	icon = 'icons/fallout/misc/lobby.dmi'
	icon_state = "title[rand(1,13)]"
	layer = 60
	plane = 1
	src.fullDark = new/go{
		icon = 'icons/fallout/misc/lobby.dmi' //Replace with actual icon
		icon_state = "transition" //Replace with actual darkness state
		layer = 61;
		alpha = 0;
		}(src)
	src.fullDark.plane = 1
	spawn() src.ticker()
	return

turf/closed/indestructible/f13/splashscreen/proc/ticker()
	while(src && istype(src,/turf/closed/indestructible/f13/splashscreen))
		src.swapImage()
		sleep(src.tickerPeriod)
	to_chat(world, "Badmins spawn shit and the title screen was deleted.<br>You know... I'm out of here!")
	return

//Change the time to determine how short/long the fading animation is.
//Change the easing to determine what interpolation it uses to change the value on a curve: good ones to try are CUBIC, BOUNCE, and ELASTIC as well as CIRCULAR. BOUNCE and ELASTIC both "bounce" or "flicker" a little bit at the end instead of just finishing straight at black.

/turf/closed/indestructible/f13/splashscreen/proc/swapImage()
	animate(src.fullDark,alpha=255,time=10,easing=CUBIC_EASING)
	sleep(12) //buffer of about 1/5 of the time of the animation, since they are not synchronized: the sleep happens on the server, but the animation is played for each client using directX. It's good to leave a buffer, but most of the time the directX will be much faster than the server anyway so you probably wont have any problems.
	src.icon_state = "title[rand(1,13)]"
	animate(src.fullDark,alpha=0,time=10,easing=CUBIC_EASING)
	return
*/
