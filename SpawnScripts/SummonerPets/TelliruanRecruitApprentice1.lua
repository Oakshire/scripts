--[[
    Script Name    : SpawnScripts/SummonerPets/TelliruanRecruitApprentice1.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.12 08:11:52
    Script Purpose : 
                   : 
--]]

function spawn(NPC, Spawn)
    
--[[Say(NPC, " before "..GetAgi(NPC).. "")
Say(NPC, " before "..GetStr(NPC).. "")
SetInfoStructFloat(NPC, "agi", 1000.0)
SetInfoStructFloat(NPC, "str", 1000.0)
    Say(NPC, "After"..GetAgi(NPC).. "")
    Say(NPC, "After "..GetStr(NPC).. "")
--]]

end


function respawn(NPC)
	spawn(NPC)
end