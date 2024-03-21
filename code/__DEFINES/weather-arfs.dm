/// Z levels that are more or less above ground and can see the sky
/// For telling players about the weather
#define Z_LEVEL_CENTCOM 1
#define Z_LEVEL_HAMLET_UNDERGROUND 2
#define Z_LEVEL_HAMLET 3
#define Z_LEVEL_HAMLET_LVL2 4
#define Z_LEVEL_TRANSIT 5
#define Z_LEVEL_VR 6
#define Z_LEVEL_FALLBACK 32768 // sadly this means we're limited to 32767 Z levels....

#define ABOVE_GROUND_Z_LEVELS list(\
	Z_LEVEL_HAMLET,\
	Z_LEVEL_HAMLET_LVL2)
#define COMMON_Z_LEVELS list(\
	Z_LEVEL_HAMLET_UNDERGROUND,\
    Z_LEVEL_HAMLET,\
	Z_LEVEL_HAMLET_LVL2)
#define CORE_Z_LEVELS list(\
	Z_LEVEL_HAMLET_UNDERGROUND,\
    Z_LEVEL_HAMLET,\
	Z_LEVEL_HAMLET_LVL2)
#define VALIDBALL_Z_LEVELS list()
#define ARTIFACT_Z_LEVELS list()

GLOBAL_LIST_INIT(z2name, list(
	"[Z_LEVEL_CENTCOM]" = "CentCom",
	"[Z_LEVEL_HAMLET_UNDERGROUND]" = "Hamlet Underground",
	"[Z_LEVEL_HAMLET]" = "Hamlet",
	"[Z_LEVEL_HAMLET_LVL2]" = "Hamlet Level 2",
	"[Z_LEVEL_TRANSIT]" = "Transit",
	"[Z_LEVEL_VR]" = "VR",
))

/* * * * * * * * * * * * *
 * THE Z LEVELS~
 * 3 = NASH UNDERGROUND
 * 4 = NASH CENTRAL
 * 5 = NASH LVL 2
 * 6 = NASH LVL 3
 * 7 = REDWATER
 * 8 = REDLICK
 * * * * * * * * * * * * */

/// Minimum time between weathers
#define WEATHER_WAIT_MIN 30 MINUTES
/// Maximum time between weathers
#define WEATHER_WAIT_MAX 45 MINUTES

/// Weather tags!

#define WEATHER_HEAT "heat_wave"
#define WEATHER_COLD "cold_snap"
#define WEATHER_SNOW "snow_storm"
#define WEATHER_RAIN "normal_ass_rain"
#define WEATHER_ACID "acid_rain"
#define WEATHER_SAND "sand_storm"
#define WEATHER_RADS "RADSTORM"
#define WEATHER_ALL_AREAS "all_of_em"

/// All weather tags
#define WEATHER_ALL WEATHER_COLD,\
	WEATHER_SNOW,\
	WEATHER_RAIN

/// All weather tags,
#define WEATHER_ALL_MINUS_HEAT WEATHER_COLD,\
	WEATHER_SNOW,\
	WEATHER_RAIN
