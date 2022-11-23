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
--    MoveToLocation(NPC,-4.64, 3.50, 0.40, 0.5)
--    MoveToLocation(NPC,-4.64, 3.50, 0.40, 0.5)
    SpawnSet(NPC,"pitch",MakeRandomInt(40,70))
    SpawnSet(NPC,"roll",MakeRandomInt(130,170))
    Head = GetHeading(NPC)
    SpawnSet(NPC,"Heading",(Head+3))
    AddTimer(NPC,500,"ChairMove1")
end
--[[
function ChairMove1a(NPC)
    MoveToLocation(NPC,-4.64, 5.27, 0.40, 0.5)
    MoveToLocation(NPC,-4.64, 5.27, 0.40, 0.5)
    AddTimer(NPC,3500,"ChairMove1")
end]]--