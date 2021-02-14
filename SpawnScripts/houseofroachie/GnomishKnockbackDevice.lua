--[[
    Script Name    : SpawnScripts/houseofroachie/GnomishKnockbackDevice.lua
    Script Author  : TyroneSWG
    Script Date    : 2021.02.14 06:02:39
    Script Purpose : Knockback test
                   : 
--]]

function spawn(NPC)

end

function examined(NPC, Spawn)
    Knockback(NPC, Spawn, 10)
end

function respawn(NPC)

end
