//#define LOWMEMORYMODE //uncomment this to load centcom and runtime station and thats it.

#include "map_files\generic\CentCom.dmm"

#ifndef LOWMEMORYMODE
	#ifdef ALL_MAPS
		#include "map_files/hamlet_arfs/hamlet_lower.dmm"
		#include "map_files/hamlet_arfs/hamlet.dmm"
		#include "map_files/hamlet_arfs/hamlet_upper.dmm"
		#ifdef TRAVISBUILDING
			#include "templates.dm"
		#endif
	#endif
#endif
