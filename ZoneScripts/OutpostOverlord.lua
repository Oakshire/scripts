--[[
	Script Name		:	ZoneScripts/OutpostOverlord.lua
	Script Purpose	:	Zone Scripts and Location Pop-ups
	Script Author	:	Cynnar
	Script Date		:	9/16/2018
	Script Notes	:	
--]]

local WelcomeToNorrath = 362
local TheArtOfCombat = 132


function init_zone_script(Zone)
	SetLocationProximityFunction(Zone, -13.41, -4.94, 220.74, 20, "OfferQuestLocation", "LeaveLocation")
end

function OfferQuestLocation (Zone, Player)
	if not HasQuest(Player, WelcomeToNorrath) and not HasCompletedQuest(Player, WelcomeToNorrath)
		and not HasQuest(Player, TheArtOfCombat) and not HasCompletedQuest(Player, TheArtOfCombat) then
		OfferQuest(nil, Player, WelcomeToNorrath)
	end
end

function LeaveLocation(Zone, Player)

end

