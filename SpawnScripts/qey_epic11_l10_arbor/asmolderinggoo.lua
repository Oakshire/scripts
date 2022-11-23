--[[
    Script Name    : SpawnScripts/qey_epic11_l10_arbor/asmolderinggoo.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.21 11:11:32
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function death(NPC,Spawn)
     ApplySpellVisual(NPC,165)
    x = GetX(NPC)
    y = GetY(NPC)
    z = GetZ(NPC)
    h = GetHeading(NPC)
    
    local zone = GetZone(NPC)
    local new_spawn = SpawnMob(zone, 2180024, true, x, y, y, h)
    if new_spawn ~= nil then
        AddSpawnAccess(new_spawn, Spawn)
    end
	PerformCameraShake(Spawn, 0.699999988079071)
    SendMessage(Spawn, "The smoldering goo exploded!","red")
    SendPopUpMessage(Spawn, "The smoldering ooze exploded!",250,0,0)    
end    
    
function respawn(NPC)
	spawn(NPC)
end