--[[
    Script Name    : SpawnScripts/FarJourneyFreeport/Waulon.lua
    Script Author  : Cynnar
    Script Date    : 2019.09.28 03:09:55
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/waulon/boat_06p_tutorial02/walon_0_008.mp3", "What? Can't ye see? Busy, away with ye!", "", 1608066875, 70639594)
end

function respawn(NPC)

end

