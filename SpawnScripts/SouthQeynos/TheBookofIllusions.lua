--[[
    Script Name    : SpawnScripts/SouthQeynos/TheBookofIllusions.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.05 08:06:42
    Script Purpose : Vhret's response.  Need quest connection (possibly Kunark? exp)
                   : 
--]]



function spawn(NPC)

end


function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'Take Book of Illusions' then
    local Vhret = GetSpawn(NPC, 2310083)
	if Vhret ~= nil then 
	    FaceTarget(Vhret, Spawn)
   	    PlayFlavor(Vhret, "", "I'm sorry, but no one but the Queen herself will be allowed to remove that book from this tower.", "no", 0, 0, Spawn, 0)
    end
end
end

function respawn(NPC)
	spawn(NPC)
end