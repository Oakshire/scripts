--[[
    Script Name    : SpawnScripts/Blackburrow/widgetgnollbrew.lua
    Script Author  : Premierio015
    Script Date    : 2022.07.12 05:07:48
    Script Purpose : 
                   : 
--]]

local GnollBrew = 5638
local BuckyID = 133773751

function spawn(NPC)

end

function casted_on(NPC, Spawn, Command)
if Command == 'Grab jug of brew' then
if GetQuestStep(Spawn, GnollBrew) == 1 then
zone = GetZone(Spawn)
if SpawnBucky == nil then
SpawnBucky = SpawnByLocationID(zone, BuckyID)
SetStepComplete(Spawn, GnollBrew, 1)
end
end
  end
   end

function respawn(NPC)
	spawn(NPC)
end