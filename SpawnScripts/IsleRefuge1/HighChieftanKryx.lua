--[[
    Script Name    : SpawnScripts/IsleRefuge1/HighChieftanKryx.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.04 01:09:30
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGoblin3.lua")

function spawn(NPC)

end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

--[[function aggro(NPC)
    Say(NPC,"[NOTE] I should be immune to physical attacks!  You need a magic weapon.")
     
end

function healthchanged(NPC, Spawn)
    
    if GetHP(NPC) <= GetMaxHP(NPC) * 0.8 then
    Say(NPC,"Ouch!")
    CastSpell(NPC, 5477, 1, NPC)
    end
    
end]]--
    