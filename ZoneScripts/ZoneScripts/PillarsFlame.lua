--[[
	Script Name		:	ZoneScripts/PillarsFlame.lua
	Script Purpose	:	
	Script Author	:	Neatz09
	Script Date		:	12/30/2019
	Script Notes	:	
--]]

function init_zone_script(zone)
    SetLocationProximityFunction(zone, 714.656, -96.6399, -1029.2, 5, "CarpetKeeper", "Leave")   -- Prophet's Peak(from Giant's Field) 738
    SetLocationProximityFunction(zone, 845.533, -150.512, -1343.64, 5, "CarpetKeeper", "Leave") -- Stinging Island (from Giant's Field) 740
    SetLocationProximityFunction(zone, 80.5403, -88.471, -771.693, 5, "CarpetKeeper", "Leave") -- Swift Riders (from Giant's Field) 732
    SetLocationProximityFunction(zone, 214.039, -126.872, -1477.36, 5, "CarpetKeeper", "Leave") -- T'Narev (from Giant's Field) 739
    SetLocationProximityFunction(zone, 1448.4, -119.097, -229.764, 5, "CarpetKeeper", "Leave")   -- Giant's Field (from Prophet's Peak) 742
    SetLocationProximityFunction(zone, 845.533, -150.512, -1343.64, 5, "CarpetKeeper", "Leave") -- Stinging Island (from Prophet's Peak) 743
	SetLocationProximityFunction(zone, 71.9763, -86.5928, -763.891, 5, "CarpetKeeper", "Leave") -- Swift Rider's (from Prophet's Peak) 734
	SetLocationProximityFunction(zone, 214.039, -126.872, -1477.36, 5, "CarpetKeeper", "Leave") -- T'Narev (from Prophet's Peak) 741
	SetLocationProximityFunction(zone, 1448.4, -119.097, -229.764, 5, "CarpetKeeper", "Leave") -- Giant's Field (from Stinging Isle) 745
	SetLocationProximityFunction(zone, 714.656, -96.6399, -1029.2, 5, "CarpetKeeper", "Leave") -- Prophet's Peak (from Stinging Isle) 746
	SetLocationProximityFunction(zone, 77.0318, -87.6447, -768.03, 5, "CarpetKeeper", "Leave") -- Swift Riders (from Stinging Isle) 733
	SetLocationProximityFunction(zone, 214.039, -126.872, -1477.36, 5, "CarpetKeeper", "Leave") -- T'Narev (from Stinging Isle) 744
	SetLocationProximityFunction(zone, 1448.4, -119.097, -229.764, 5, "CarpetKeeper", "Leave") -- Giant's Field (from Swift Riders) 728
	SetLocationProximityFunction(zone, 714.656, -96.6399, -1029.2, 5, "CarpetKeeper", "Leave") -- Prophet's Peak (from Swift Riders) 730
	SetLocationProximityFunction(zone, 845.533, -150.512, -1343.64, 5, "CarpetKeeper", "Leave") -- Stinging Isle (from Swift Riders) 729
	SetLocationProximityFunction(zone, 214.039, -126.872, -1477.36, 5, "CarpetKeeper", "Leave") -- T'Narev (from Swift Riders) 727
	SetLocationProximityFunction(zone, 1448.4, -119.097, -229.764, 5, "CarpetKeeper", "Leave") -- Giant's Field (from T'Narev) 735
	SetLocationProximityFunction(zone, 714.656, -96.6399, -1029.2, 5, "CarpetKeeper", "Leave") -- Prophet's Peak (from T'Narev) 736
	SetLocationProximityFunction(zone, 845.533, -150.512, -1343.64, 5, "CarpetKeeper", "Leave") -- Stinging Isle (from T'Narev) 737
	SetLocationProximityFunction(zone, 78.3525, -87.5199, -758.376, 5, "CarpetKeeper", "Leave") -- Swift Riders (from T'Narev) 731

end
function player_entry(zone, player)
end

function enter_location(zone, spawn, grid)
end

function leave_location(zone, spawn, grid)
end

function dawn(zone)
end

function dusk(zone)
end

function CarpetKeeper(zone, Spawn)
    if IsPlayer(Spawn) and IsOnAutoMount(Spawn) then
        EndAutoMount(Spawn)
     end
end

function Leave(zone, Spawn)
end