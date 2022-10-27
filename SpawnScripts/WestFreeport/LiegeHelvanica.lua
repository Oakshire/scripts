--[[
    Script Name    : SpawnScripts/WestFreeport/LiegeHelvanica.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.26 07:10:40
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
--		PlayFlavor(NPC, "voiceover/english/liege_helvanica/fprt_west/100_soc_human_militia_helvanica_tasked_d91c9a23.mp3", "Return when you have finished your present task.", "", 1637985737, 3395456037, Spawn, 0)
		PlayFlavor(NPC, "voiceover/english/liege_helvanica/fprt_west/100_soc_human_militia_helvanica_no_5a6d5fb9.mp3", "Hail, fool. Have the poorhouses overflowed out into the streets?  The militia has no time for vagrants!  Get out of my sight!", "glare", 3239214506, 3877091290, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/liege_helvanica/fprt_west/100_soc_human_militia_helvanica_no_5a6d5fb9.mp3", "Hail, fool. Have the poorhouses overflowed out into the streets?  The militia has no time for vagrants!  Get out of my sight!", "stare", 3239214506, 3877091290, Spawn, 0)
	end
end