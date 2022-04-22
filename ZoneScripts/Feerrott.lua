--[[
	Script Name		:	ZoneScripts/Feerrott.lua
	Script Purpose	:	
	Script Author	:	Neatz09
	Script Date		:	2/24/2019
	Script Notes	:	
--]]

local TheSteinOfMoggok = 5511

function init_zone_script(Zone)
    SetLocationProximityFunction(zone, -119, -16.93, 549.2, 10, "StableMasters", "Leave")  -- Alliz Evol
    SetLocationProximityFunction(zone, 11.47, 3.68, -27.91, 10, "StableMasters", "Leave")   -- Drowning Causeway
    SetLocationProximityFunction(zone, -198.16, -7.66, 818.5, 10, "StableMasters", "Leave")    -- Greenblood River
    SetLocationProximityFunction(zone, -561.2, -15.27, 792.09, 10, "StableMasters", "Leave") -- Tae Ew
    SetLocationProximityFunction(zone, -1883.67, -21.52, 839.08, 10, "StableMasters", "Leave")  -- Dread basin
    SetLocationProximityFunction(zone, -1022.97, -4.75, 434.48, 10, "StableMasters", "Leave") -- Tower of Vul
    SetLocationProximityFunction(zone, -1189.48, -5.49, 765.77, 10, "StableMasters", "Leave") -- Alliz Tae
    SetLocationProximityFunction(Zone, 30, -9, 698, 10, "ClurgTheBartender", "LeaveLocation")
end

function LeaveLocation(Zone, Player)

end

function StableMasters(Zone, Spawn)
	if IsPlayer(Spawn) and IsOnAutoMount(Spawn) then
		EndAutoMount(Spawn)
	end
end

function ClurgTheBartender(Zone, Player)
if HasQuest(Player, TheSteinOfMoggok) and  GetQuestStep(Player, TheSteinOfMoggok) == 6 then
   local ClurgBartender = SpawnMob(Zone, 1210294, false,  30,  -9, 698, 349.984)
   if ClurgBartender ~= nil then
    Attack(ClurgBartender, Player)
end
 end  
   end

function player_entry(Zone, player)
end

function enter_location(Zone, spawn, grid)
end

function leave_location(Zone, spawn, grid)
end

function dawn(Zone)
end

function dusk(Zone)
end