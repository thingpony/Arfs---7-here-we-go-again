
//Original Casino Code created by Shadowfire117#1269 - Ported from CHOMPstation
//Modified by GhostActual#2055 for use with VOREstation

/obj/item/toy/cards/deck/casino/New()
	var/datum/playingcard/casino/P
	for(var/suit in list("spades","clubs","diamonds","hearts"))

		var/colour
		if(suit == "spades" || suit == "clubs")
			colour = "black_"
		else
			colour = "red_"

		for(var/number in list("ace","two","three","four","five","six","seven","eight","nine","ten"))
			P = new()
			P.name = "[number] of [suit]"
			P.card_icon = "casino_[colour]num"

		for(var/number in list("jack","queen","king"))
			P = new()
			P.name = "[number] of [suit]"
			P.card_icon = "casino_[colour]col"

/datum/playingcard/casino
	name = "playing card"
	card_icon = "card_back"

/obj/item/weapon/deck/casino
	icon = 'icons/obj/playing_cards.dmi'

/obj/item/weapon/deck/holder/casino //WIP In future do a cool holder
	name = "card box"
	desc = "A small leather case to show how classy you are compared to everyone else."
	icon = 'icons/obj/playing_cards.dmi'
	icon_state = "card_holder"

/obj/item/weapon/deck/cards/casino
	name = "deck of casino cards"
	desc = "A deck of playing cards from the golden goose casino, comes without a joker card!"
	icon = 'icons/obj/playing_cards.dmi'
	icon_state = "casino_deck"

/obj/item/weapon/spacecasinocash
	name = "broken casino chip"
	desc = "It's worth nothing in a casino."
	gender = PLURAL
	icon = 'icons/obj/casino.dmi'
	icon_state = "spacecasinocash1"
	opacity = 0
	density = 0
	anchored = 0.0
	force = 1.0
	throwforce = 1.0
	throw_speed = 1
	throw_range = 2
	var/access = list()
	var/worth = 0

/obj/item/weapon/spacecasinocash/c1
	name = "1 credit casino chip"
	icon_state = "spacecasinocash1"
	desc = "It's worth 1 credit."

/obj/item/weapon/spacecasinocash/c10
	name = "10 credit casino chip"
	icon_state = "spacecasinocash10"
	desc = "It's worth 10 credits."

/obj/item/weapon/spacecasinocash/c20
	name = "20 credit casino chip"
	icon_state = "spacecasinocash20"
	desc = "It's worth 20 credits."

/obj/item/weapon/spacecasinocash/c50
	name = "50 credit casino chip"
	icon_state = "spacecasinocash50"
	desc = "It's worth 50 credits."

/obj/item/weapon/spacecasinocash/c100
	name = "100 credit casino chip"
	icon_state = "spacecasinocash100"
	desc = "It's worth 100 credits."

/obj/item/weapon/spacecasinocash/c200
	name = "200 credit casino chip"
	icon_state = "spacecasinocash200"
	desc = "It's worth 200 credits."

/obj/item/weapon/spacecasinocash/c500
	name = "500 credit casino chip"
	icon_state = "spacecasinocash500"
	desc = "It's worth 500 credits."

/obj/item/weapon/spacecasinocash/c1000
	name = "1000 credit casino chip"
	icon_state = "spacecasinocash1000"
	desc = "It's worth 1000 credits."

/proc/spawn_casinochips(var/sum, spawnloc, mob/living/carbon/human/human_user as mob)
	var/obj/item/weapon/spacecasinocash/SC = new (spawnloc)

	if (ishuman(human_user) && !human_user.get_active_hand())
		human_user.put_in_hands(SC)
	return

/obj/item/weapon/casino_platinum_chip
	name = "platinum chip"
	desc = "Ringa-a-Ding-Ding!"
	icon = 'icons/obj/casino.dmi'
	icon_state = "platinum_chip"
	var/sides = 2
	opacity = 0
	density = 0
	anchored = 0.0
	force = 1.0
	throwforce = 1.0
	throw_speed = 1
	throw_range = 2

/obj/item/weapon/casino_platinum_chip/attack_self(mob/user as mob)
	var/result = rand(1, sides)
	var/comment = ""
	if(result == 1)
		comment = "Ace"
	else if(result == 2)
		comment = "Joker"
	user.visible_message("<span class='notice'>[user] has thrown \the [src]. It lands on [comment]! </span>", \
						 "<span class='notice'>You throw \the [src]. It lands on [comment]! </span>")

