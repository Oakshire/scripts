--[[
    Script Name    : SpawnScripts/NorthQeynos/PartisanKeladerouo.lua
    Script Author  : Dorbin
    Script Date    : 2022.04.23 03:04:26
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/partisan_keladerouo/qey_north/100_soc_erudite_celestial_officer_keladerouo_no_8790bd00.mp3", "Welcome to the sanctuary of the Temple of Life.  Always let your inner strength burn brightly against the forces of evil.", "", 1948315472, 2791883503, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end