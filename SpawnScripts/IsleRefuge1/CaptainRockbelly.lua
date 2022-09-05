--[[
    Script Name    : SpawnScripts/IsleRefuge1/CaptainRockbelly.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.04 12:09:35
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function aggro(NPC)
    	PlayFlavor(NPC, "voiceover/english/captain_rockbelly/tutorial_island02_fvo_ghostshout.mp3", "Get youz away from meez treasures!  Dis meez loots!", "", 3040387050, 4243014787)
end