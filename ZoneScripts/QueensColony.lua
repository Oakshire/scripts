--[[
	Script Name	: ZoneScripts/QueensColony.lua
	Script Purpose	: Location Pop-ups
	Script Author	: John Adams
	Script Date	: 2009.05.07
	Script Notes	: 
--]]

local WelcomeToNorrath = 133
local TheArtOfCombat = 132
local TheSourceOfEvil = 164

function init_zone_script(Zone)
	SetLocationProximityFunction(Zone, -13.41, -4.94, 220.74, 20, "OfferQuestLocation", "LeaveLocation")
	SetLocationProximityFunction(Zone, 152.24, 3.69, -173.34, 15, "BladeMasterLocation", "LeaveLocation")
end

function OfferQuestLocation (Zone, Player)
	if not HasQuest(Player, WelcomeToNorrath) and not HasCompletedQuest(Player, WelcomeToNorrath)
		and not HasQuest(Player, TheArtOfCombat) and not HasCompletedQuest(Player, TheArtOfCombat) then
		OfferQuest(nil, Player, WelcomeToNorrath)
	end
end

function BladeMasterLocation(Zone, Player)
	if HasQuest(Player, TheSourceOfEvil) and GetQuestStep(Player, TheSourceOfEvil) == 4 then
		local blade = SpawnMob(Zone, 2530032, false, 154.12, 1.87, -175.74, 349.984)
		if blade ~= nil then
			Attack(blade, Player)
		end
	end
end

function LeaveLocation(Zone, Player)
end

function enter_location(Zone, Player, GridID)
	if GridID == 771354606 then
		SendPopUpMessage(Player, "Sunset Meadow", 255, 255, 0)
	end
end

function player_entry(Zone, Spawn)
AddPlayerMail(Spawn, "EQ2EmulatorDevTeam", "Welcome", "Welcome to EQ2Emulator, this project is currently in Pre-Alpha. We appreciate feedback and bug reports for existing content, and are always looking for additional talent! Thank you for testing and enjoy your stay!  -The EQ2EMU Team", 2)
SendPopUpMessage(Spawn, "The Queen's Colony", 230, 230, 230)
end


