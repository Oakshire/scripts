--[[
    Script Name    : SpawnScripts/Freeport/LiegeHelvanica.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.07 08:08:59
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/liege_helvanica/fprt_west/100_soc_human_militia_helvanica_no_5a6d5fb9.mp3", "Hail, fool. Have the poorhouses overflowed out into the streets?  The militia has no time for vagrants!  Get out of my sight!", "", 3239214506, 3877091290, Spawn) 
end

function respawn(NPC)

end

function targeted(NPC, Spawn)
    if GetDistance(Spawn, NPC) < 10 then
        hailed(NPC, Spawn)
    end
end