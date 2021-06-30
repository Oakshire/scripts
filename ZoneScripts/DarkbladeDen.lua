--[[
    Script Name    : ZoneScripts/DarkbladeDen.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.29 08:06:11
    Script Purpose : 
                   : 
--]]

local Group1ID = 18818
local Group2ID = 18819

function init_zone_script(Zone)
	SetLocationProximityFunction(Zone, 13.73, -1.28, 4.84, 50, "Check")
end

function Check(Zone, Player)
local Group1 = GetSpawnByGroupID(Zone, Group1ID)
local Group2 = GetSpawnByGroupID(Zone, Group2ID)
 if Group1 and Group2 == nil then
SpawnByLocationID(Zone, 1586529)
SpawnByLocationID(Zone, 1586530)
end
  end
