--[[
	Script Name		:	ZoneScripts/KylongPlains.lua
	Script Purpose	:	
	Script Author	:	Neatz09
	Script Date		:	6/5/2020
	Script Notes	:	
--]]

function init_zone_script(zone)
	SetLocationProximityFunction(zone, 1983.77, 480.44, -884.92, 5, "Sokokar", "Leave")   -- Teren's (from Dreg's)
    SetLocationProximityFunction(zone, -805.30, 91.68, -1035.39, 5, "Sokokar", "Leave") -- Fens (from Dreg's)
    SetLocationProximityFunction(zone, -1261.21, 27.79, 449.58, 5, "Sokokar", "Leave") -- Kunzar's Edge (from Dreg's)
    SetLocationProximityFunction(zone, 1209.91, 119.35, -2133.57, 5, "Sokokar", "Leave") -- Highton (from Dreg's)
    SetLocationProximityFunction(zone, 1904.18, 158.08, -2542.92, 5, "Sokokar", "Leave")   -- Jarsath (from Dreg's)
    SetLocationProximityFunction(zone, 898.862, 11.1332, 145.769, 5, "Sokokar", "Leave") -- Dreg's (from Kunzar's Edge)
	SetLocationProximityFunction(zone, -804.757, 91.6483, -1036.08, 5, "Sokokar", "Leave") -- Fens (from Kunzar's Edge)
	SetLocationProximityFunction(zone, 1969.1, 480.01, -883.66, 5, "Sokokar", "Leave") -- Teren's (from Kunzar's Edge)
	SetLocationProximityFunction(zone, 1904.18, 158.084, -2542.92, 5, "Sokokar", "Leave") -- Jarsath (from Kunzar's Edge)
	SetLocationProximityFunction(zone, 1209.91, 119.35, -2133.57, 5, "Sokokar", "Leave") -- Highton (from Kunzar's Edge)
	SetLocationProximityFunction(zone, 1985.59, 480.227, -884.243, 5, "Sokokar", "Leave") -- Teren's (from Fens)
	SetLocationProximityFunction(zone, 897.927, 10.699, 143.122, 5, "Sokokar", "Leave") -- Dreg's (from Fens)
	SetLocationProximityFunction(zone, -1260.85, 28.0256, 450.074, 5, "Sokokar", "Leave") -- Kunzar's Edge (from Fens)
	SetLocationProximityFunction(zone, 1904.18, 158.084, -2542.92, 5, "Sokokar", "Leave") -- Jarsath (from Fens)
	SetLocationProximityFunction(zone, 1209.91, 119.35, -2133.57, 5, "Sokokar", "Leave") -- Highton (from Fens)
	SetLocationProximityFunction(zone, 897.55, 10.07, 144.07, 5, "Sokokar", "Leave") -- Dreg's (from Teren's)
	SetLocationProximityFunction(zone, -805.51, 92.5658, -1035.55, 5, "Sokokar", "Leave") -- Fens (from Teren's)
	SetLocationProximityFunction(zone, 1210.86, 119.757, -2133.76, 5, "Sokokar", "Leave") -- Highton (from Teren's)
	SetLocationProximityFunction(zone, 1899.48, 155.92, -2537.43, 5, "Sokokar", "Leave") -- Jarsath (from Teren's)
	SetLocationProximityFunction(zone, 1984.72, 480.281, -885.051, 5, "Sokokar", "Leave") -- Teren's (from Highton)
	SetLocationProximityFunction(zone, 1904.18, 158.084, -2542.92, 5, "Sokokar", "Leave") -- Jarsath (from Highton)
	SetLocationProximityFunction(zone, 896.5, 10.21, 144.67, 5, "Sokokar", "Leave") -- Dreg's (from Highton)
	SetLocationProximityFunction(zone, -805.303, 91.6882, -1035.39, 5, "Sokokar", "Leave") -- Fens (from Highton)
	SetLocationProximityFunction(zone, -1261.21, 27.7938, 449.581, 5, "Sokokar", "Leave") -- Kunzar's Edge (from Highton)
	SetLocationProximityFunction(zone, 1211.19, 119.899, -2134.1, 5, "Sokokar", "Leave") -- Highton (from Jarsath)
	SetLocationProximityFunction(zone, 1968.71, 480.46, -894.16, 5, "Sokokar", "Leave") -- Teren's (from Jarsath)
	SetLocationProximityFunction(zone, -805.51, 92.5658, -1035.55, 5, "Sokokar", "Leave") -- Fens (from Jarsath)
	SetLocationProximityFunction(zone, -1261.21, 27.7938, 449.581, 5, "Sokokar", "Leave") -- Kunzar's Edge (from Jarsath)
	SetLocationProximityFunction(zone, 896.5, 10.21, 144.67, 5, "Sokokar", "Leave") -- Dreg's (from Jarsath)
	
end

function player_entry(zone, player)
end

function enter_location(zone, spawn, grid)
end

function leave_location(zone, spawn, grid)
end

function Sokokar(zone, Spawn)
    if IsPlayer(Spawn) and IsOnAutoMount(Spawn) then
        EndAutoMount(Spawn)
     end
end

function dawn(zone)
end

function dusk(zone)
end