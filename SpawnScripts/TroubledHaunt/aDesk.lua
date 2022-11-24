--[[
    Script Name    : SpawnScripts/TroubledHaunt/aDesk.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.23 12:11:56
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
local zone = GetZone(NPC)
if GetSpawnLocationID(NPC)==133780834 then
AddTimer(NPC,1500,"Spin")
end
end



function Spin(NPC)
local zone = GetZone(NPC)
if IsAlive(GetSpawnByLocationID(zone,133780857))==true then
	Head = GetHeading(NPC)
	SetHeading(NPC,(Head+5))
	AddTimer(NPC,100,"Spin")

else
        SpawnByLocationID(zone,133780854)
        Despawn(GetSpawnByLocationID(zone,133780834))
        PlaySound(NPC,"sounds/ui/place_item.wav",GetX(NPC), GetY(NPC), GetZ(NPC))   

end
end

function respawn(NPC)
	spawn(NPC)
end