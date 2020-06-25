--[[
	Script Name		:	ZoneScripts/LopingPlains.lua
	Script Purpose	:	<purpose>
	Script Author	:	Neatz09
	Script Date		:	12/22/2019
	Script Notes	:	<special-instructions>
--]]

function init_zone_script(zone)
SetLocationProximityFunction(zone, -478.73, -14.61, -374.39, 10, "StableMasters", "Leave")  -- GFay (from Somborn) 970
SetLocationProximityFunction(zone, 763.31, 75.55, -130.66, 10, "StableMasters", "Leave")  -- LFay (from Somborn) 972
SetLocationProximityFunction(zone, -736.80, 10.52, 232.33, 10, "StableMasters", "Leave")  -- SFM (from Somborn) 976
SetLocationProximityFunction(zone, 48.04, 62.27, 249.31, 10, "StableMasters", "Leave")  -- Timorous Moor (from Somborn) 974
SetLocationProximityFunction(zone, -478.73, -14.61, -374.39, 10, "StableMasters", "Leave")  -- Gfay (from Lfay) 977
SetLocationProximityFunction(zone, -495.23, 9.25, -8.61, 10, "StableMasters", "Leave")  -- Somborn (from Gfay) 969
SetLocationProximityFunction(zone, -736.80, 10.52, 232.33, 10, "StableMasters", "Leave")  -- SFM (from Lfay) 979
SetLocationProximityFunction(zone, 48.04, 62.27, 249.31, 10, "StableMasters", "Leave")  -- Timorous Moor (from Lfay) 978
SetLocationProximityFunction(zone, 763.31, 75.55, -130.66, 10, "StableMasters", "Leave")  -- Lfay (from Gfay) 980
SetLocationProximityFunction(zone, -736.80, 10.52, 232.33, 10, "StableMasters", "Leave")  -- SFM (from Gfay) 982
SetLocationProximityFunction(zone, 48.04, 62.27, 249.31, 10, "StableMasters", "Leave")  -- Timorous Moor (from Gfay) 981
SetLocationProximityFunction(zone, -478.73, -14.61, -374.39, 10, "StableMasters", "Leave")  -- Gfay (from Timorous Moor) 983
SetLocationProximityFunction(zone, 763.31, 75.55, -130.66, 10, "StableMasters", "Leave")  -- Lfay (from Timorous Moor) 984
SetLocationProximityFunction(zone, -493.82, 10.29, 1.88, 10, "StableMasters", "Leave")  -- Somborn (from Timorous Moor) 973
SetLocationProximityFunction(zone, -736.80, 10.52, 232.33, 10, "StableMasters", "Leave")  -- SFM (from Timorous Moor) 985
SetLocationProximityFunction(zone, -478.73, -14.61, -374.39, 10, "StableMasters", "Leave")  -- Gfay (from SFM) 986
SetLocationProximityFunction(zone, 763.31, 75.55, -130.66, 10, "StableMasters", "Leave")  -- Lfay (from SFM) 987
SetLocationProximityFunction(zone, 48.04, 62.27, 249.31, 10, "StableMasters", "Leave")  -- SFM (from Timorous Moor) 988
SetLocationProximityFunction(zone, -497.53, 9.38, 2.18, 10, "StableMasters", "Leave")  -- Somborn (from LFay) 971
SetLocationProximityFunction(zone, -497.77, 9.24, -1.04, 10, "StableMasters", "Leave")  -- Somborn (from SFM) 975
end

function StableMasters(zone, Spawn)
	if IsPlayer(Spawn) and IsOnAutoMount(Spawn) then
		EndAutoMount(Spawn)
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

end