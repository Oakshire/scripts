--[[
    Script Name    : SpawnScripts/TroubledHaunt/aChair.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.23 12:11:26
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
zone = GetZone(NPC)
if GetSpawnLocationID(NPC)==133780830 or GetSpawnLocationID(NPC)==133780829 then
AddTimer(NPC,1000,"ChairMove1")    
end
end


function respawn(NPC)
	spawn(NPC)
end

function ChairMove1(NPC)
    local zone = GetZone(NPC)
if IsAlive(GetSpawnByLocationID(zone,133780858))==true then

    SpawnSet(NPC,"pitch",MakeRandomInt(40,70))
    SpawnSet(NPC,"roll",MakeRandomInt(130,170))
    Head = GetHeading(NPC)
    SpawnSet(NPC,"Heading",(Head+3))
    AddTimer(NPC,500,"ChairMove1")
    else
    if GetSpawnLocationID(NPC)==133780830 then
        SpawnByLocationID(zone,133780841)
        Despawn(NPC)
        PlaySound(NPC,"sounds/ui/place_item.wav",GetX(NPC), GetY(NPC), GetZ(NPC))
    elseif GetSpawnLocationID(NPC)==133780829 then
        SpawnByLocationID(zone,133780842)
         Despawn(NPC)
        PlaySound(NPC,"sounds/ui/place_item.wav",GetX(NPC), GetY(NPC), GetZ(NPC))
    end
    end
end
