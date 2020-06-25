--[[
	Script Name		:	ItemScripts/smolderingtrout.lua
	Script Purpose	:	clickable used in quest "The Big One" (ID = 190)
	Script Author	:	fearfx
	Script Date		:	25 Jan 2017
	Script Notes	:	Smoldering trout (ID = 48104)
	                :   Theres no Spawn for SmolderFin, so I have used a razortooth shark (2530014) instead.
	
--]]

local TheBigOne = 190

function used(Item, Player)
    local target = GetTarget(Player)
    local zone = GetZone(Player)
    local x = GetX(Player)
    local y = GetY(Player)
    local z = GetZ(Player)
    if GetTempVariable(Player, "TheBigOne") == nil then
        spawnChance = 0
    else
        spawnChance = tonumber(GetTempVariable(Player, "TheBigOne"))
    end

    if GetZoneID(zone) == 34 and GetQuestStep(TheBigOne) == 1 then
        if between(-91.3, 35.5, x) and between(-67, -60, y) and between(-186.79, -54.40, z) then
            RemoveItem(Player, 48104)
            spawnChance = spawnChance + 20
            SetTempVariable(Player, "TheBigOne", spawnChance)
            if tonumber(GetTempVariable(Player, "TheBigOne")) > 20 then
                if tonumber(GetTempVariable(Player, "TheBigOne")) > math.random(30, 80) then
                    spawnSmolderFin(Player, zone)
                end
            end
            
        else
            SendMessage(Player, "Can only be used in Smoldering Lake.", "yellow")
        end
    else
        SendMessage(Player, "Can only be used in Darklight Wood.", "yellow")
    end
end

function spawnSmolderFin(Player, zone)
    local newSpawn = SpawnMob(zone, 1240025, 1, -27.18, -65.33, -110.43, 167.84)
    SpawnSet(newSpawn, "name", "Smolderfin")
    SpawnSet(newSpawn, "faction", "1")
    SpawnSet(newSpawn, "level", "11")
    SpawnSet(newSpawn, "size", "90")
    SpawnSet(newSpawn, "hp", "220")
    if newSpawn ~= nil then
        AddSpawnAccess(newSpawn, Player)
    end
end

function between(low, higher, n)
    if low <= n and n <= higher then
        return true
    else
        return false
    end
end