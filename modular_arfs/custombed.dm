//Giant Beds
/obj/structure/bed/double/big

/obj/structure/bed/double/huge

/obj/structure/bed/double/mega

/obj/structure/bed/double/big/Initialize()
    ..()
    transform = matrix(2,0,0,0,2,0)
    update_icon()

/obj/structure/bed/double/huge/Initialize()
    ..()
    transform = matrix(3,0,0,0,3,0)
    update_icon()

// /obj/structure/bed/double/mega/Initialize()
//     ..()
//     transform = matrix(9,0,0,0,9,0)
//     update_icon()

/obj/structure/bed/double/big/post_buckle_mob(mob/living/M as mob)
    if(M.buckled == src)
        M.pixel_y = (25 + pixel_y)
        M.old_y = (25 + pixel_y)
        M.pixel_x = (pixel_x)
        M.old_x = (pixel_x)
    else
        M.pixel_y = 0
        M.old_y = 0
        M.pixel_x = 0
        M.old_x = 0

/obj/structure/bed/double/huge/post_buckle_mob(mob/living/M as mob)
    if(M.buckled == src)
        M.pixel_y = (37 + pixel_y)
        M.old_y = (37 + pixel_y)
        M.pixel_x = (pixel_x)
        M.old_x = (pixel_x)
    else
        M.pixel_y = 0
        M.old_y = 0
        M.pixel_x = 0
        M.old_x = 0

// /obj/structure/bed/double/mega/post_buckle_mob(mob/living/M as mob)
//     if(M.buckled == src)
//         M.pixel_y = (109 + pixel_y)
//         M.old_y = (109 + pixel_y)
//         M.pixel_x = (pixel_x)
//         M.old_x = (pixel_x)
//     else
//         M.pixel_y = 0
//         M.old_y = 0
//         M.pixel_x = 0
//         M.old_x = 0
