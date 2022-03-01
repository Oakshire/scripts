--[[
    Script Name    : SpawnScripts/AbandonedLabs/Alia.lua
    Script Author  : neatz09
    Script Date    : 2020.06.21 04:06:03
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    if IsPlayer(Spawn) then
        AddCoin(Spawn, 10)
        Say(NPC, "Here have some copper")
    end
end

function respawn(NPC)

end

