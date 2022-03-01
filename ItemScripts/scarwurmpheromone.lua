--[[
	Script Name		:	ItemScripts/scarwurmpheromone.lua
	Script Purpose	:	clickable used in quest "The Mother Lode"
	Script Author	:	fearfx
	Script Date		:	24 Jan 2017
	Script Notes	:	Summons "the wurm mother" (ID = 341051)
	
--]]

local TheMotherLode = 148

function used(Item, Player)
    local zone = GetZone(Player)
    local x = GetX(Player)
    local y = GetY(Player)
    local z = GetZ(Player)
    if x >= -490 and x <= -438 and z <= -43 and z >= -76 and y <= -48 and y >= -53 and GetTempVariable(Player, "WurmMother") == nil and GetQuestStep(Player, TheMotherLode) ~= 3 then
        local zone = GetZone(Player)
        local newSpawn = SpawnMob(zone, 341051, 1, -464.18, -49.33, -60.43, 242.84)
        if newSpawn ~= nil then
            AddSpawnAccess(newSpawn, Player)
            AddStepProgress(Player, TheMotherLode, 1, 1)
            SetTempVariable(Player, "WurmMother", "1")
        end
    elseif GetQuestStep(Player, TheMotherLode) == 3 then
        SendMessage(Player, "You have already killed The Wurm Mother.", "yellow")
    elseif GetTempVariable(Player, "WurmMother") ~= nil then
        SendMessage(Player, "The Wurm Mother has already been summoned.", "yellow")
    else
        SendMessage(Player, "You must use this item on the bridge that spans Innoruuk's Scar.", "yellow")
   end
end
