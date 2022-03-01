--[[
	Script Name		:	ZoneScripts/LesserFaydark.lua
	Script Purpose	:	<purpose>
	Script Author	:	Neatz09
	Script Date		:	12/22/2019
	Script Notes	:	<special-instructions>
--]]

function init_zone_script(zone)
SetLocationProximityFunction(zone, 655.749, 80.7645, -322.485, 10, "StableMasters", "Leave")  -- Butcherblock (from Fae Court) 943
SetLocationProximityFunction(zone, 118.541, -21.1543, 389.489, 10, "StableMasters", "Leave")  -- Loping Plains (from Fae Court) 944
SetLocationProximityFunction(zone, -93.3126, -54.6749, -184.388, 10, "StableMasters", "Leave")  -- Lower Grove (from Fae Court) 959
SetLocationProximityFunction(zone, -48.3484, -14.0184, -93.8942, 10, "StableMasters", "Leave")  -- Upper Grove (from Fae Court) 945
SetLocationProximityFunction(zone, -176.043, -52.4576, 361.499, 10, "StableMasters", "Leave")  -- Fae Court (from Butcherblock) 941
SetLocationProximityFunction(zone, -640.9, -54.25, 120.74, 10, "StableMasters", "Leave")  -- GFay (from Butcherblock) 958
SetLocationProximityFunction(zone, 117.865, -20.5592, 390.161, 10, "StableMasters", "Leave")  -- Loping Plains (from Butcherblock) 940
SetLocationProximityFunction(zone, -93.3126, -54.6749, -184.388, 10, "StableMasters", "Leave")  -- Lower Grove (from ButcherBlock) 957
SetLocationProximityFunction(zone, -49.2191, -14.3574, -89.6949, 10, "StableMasters", "Leave")  -- UpperGrove (from Butchblock) 942
SetLocationProximityFunction(zone, 673.997, 78.6075, -310.035, 10, "StableMasters", "Leave")  -- Butcherblock (from Upper Grove) 951
SetLocationProximityFunction(zone, -176.277, -51.6547, 366.898, 10, "StableMasters", "Leave")  -- Fae Court (from Upper Grove) 953
SetLocationProximityFunction(zone, -640.9, -54.25, 120.74, 10, "StableMasters", "Leave")  -- Gfay (from Upper Grove) 955
SetLocationProximityFunction(zone, 122.411, -21.242, 393.818, 10, "StableMasters", "Leave")  -- Loping Plains (from Upper Grove) 952
SetLocationProximityFunction(zone, -93.3126, -54.6749, -184.388, 10, "StableMasters", "Leave")  -- Lower Grove (from Upper Grove) 956
SetLocationProximityFunction(zone, 655.749, 80.7645, -322.485, 10, "StableMasters", "Leave")  -- Butcherblock (from Lower Grove) 965
SetLocationProximityFunction(zone, -181.15, -53.64, 365.63, 10, "StableMasters", "Leave")  -- Fae Court (from Lower Grove) 968
SetLocationProximityFunction(zone, -647.068, -52.4813, 128.144, 10, "StableMasters", "Leave")  -- Gfay (from Lower Grove) 950
SetLocationProximityFunction(zone, 118.541, -21.1543, 389.489, 10, "StableMasters", "Leave")  -- Loping Plains (from Lower Grove) 966
SetLocationProximityFunction(zone, -48.3484, -14.0184, -93.8942, 10, "StableMasters", "Leave")  -- Upper Grove (from Lower Grove) 967
SetLocationProximityFunction(zone, -655.48, 81.3888, -319.19, 10, "StableMasters", "Leave")  -- Butcherblock (from Loping Plains) 947
SetLocationProximityFunction(zone, -173.787, -52.5696, 364.125, 10, "StableMasters", "Leave")  -- Fae Court (from Loping Plains) 948
SetLocationProximityFunction(zone, -640.9, -54.25, 120.74, 10, "StableMasters", "Leave")  -- GFay (from Loping Plains) 963
SetLocationProximityFunction(zone, -93.3126, -54.6749, -184.388, 10, "StableMasters", "Leave")  -- Lower Grove (from Loping Plains) 964
SetLocationProximityFunction(zone, -44.8497, -14.038, -97.0766, 10, "StableMasters", "Leave")  -- Upper Grove (from Loping Plains) 949
SetLocationProximityFunction(zone, 655.749, 80.7645, -322.485, 10, "StableMasters", "Leave")  -- Butcherblock (from Gfay) 960
SetLocationProximityFunction(zone, -181.15, -53.64, 365.63, 10, "StableMasters", "Leave")  -- Fae Court (from Gfay) 954
SetLocationProximityFunction(zone, 118.541, -21.1543, 389.489, 10, "StableMasters", "Leave")  -- Loping Plains (from GFay) 961
SetLocationProximityFunction(zone, -93.3126, -54.6749, -184.388, 10, "StableMasters", "Leave")  -- Lower Grove (from GFay) 946
SetLocationProximityFunction(zone, -48.3484, -14.0184, -93.8942, 10, "StableMasters", "Leave")  -- Upper Grove (from GFay) 962
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