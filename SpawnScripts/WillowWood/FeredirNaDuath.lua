--[[
	Script Name	: SpawnScripts/WillowWood/FeredirNaDuath.lua
	Script Purpose	: Feredir Na'Duath  
	Script Author	: Scatman
	Script Date	: 2009.09.15
	Script Notes	: 
--]]

local WOOD_ELF = 15

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
	
	MovementLoopAddLocation(NPC, 806.83, -21.08, -631.66, 2, 1)
	MovementLoopAddLocation(NPC, 806.83, -21.08, -631.66, 2, math.random(10, 30),"Action")
	MovementLoopAddLocation(NPC, 809.40, -20.58, -624.21, 2)
	MovementLoopAddLocation(NPC, 824.93, -20.36, -621.53, 2)
	MovementLoopAddLocation(NPC, 828.00, -20.14, -613.99, 2)
	MovementLoopAddLocation(NPC, 834.82, -21.40, -616.09, 2, 1)
	MovementLoopAddLocation(NPC, 834.82, -21.40, -616.09, 2, math.random(15, 40),"Action")
	MovementLoopAddLocation(NPC, 836.63, -21.13, -607.60, 2)
	MovementLoopAddLocation(NPC, 837.98, -20.93, -605.67, 2)
	MovementLoopAddLocation(NPC, 840.11, -20.88, -604.95, 2)
	MovementLoopAddLocation(NPC, 842.86, -21.05, -605.55, 2)
	MovementLoopAddLocation(NPC, 848.78, -20.96, -608.04, 2)
	MovementLoopAddLocation(NPC, 856.05, -19.93, -609.18, 2)
	MovementLoopAddLocation(NPC, 861.92, -18.97, -608.21, 2)
	MovementLoopAddLocation(NPC, 870.01, -18.46, -604.19, 2, 1)
	MovementLoopAddLocation(NPC, 870.01, -18.46, -604.19, 2, math.random(30, 120),"Action")
	MovementLoopAddLocation(NPC, 870.36, -20.88, -613.71, 2)
	MovementLoopAddLocation(NPC, 875.97, -21.14, -624.37, 2)
	MovementLoopAddLocation(NPC, 874.31, -20.19, -629.96, 2)
	MovementLoopAddLocation(NPC, 867.43, -20.63, -639.17, 2)
	MovementLoopAddLocation(NPC, 855.45, -20.85, -646.91, 2)
	MovementLoopAddLocation(NPC, 852.47, -20.56, -655.13, 2)
	MovementLoopAddLocation(NPC, 846.62, -20.62, -662.08, 2, 1)
	MovementLoopAddLocation(NPC, 846.62, -20.62, -662.08, 2, math.random(30, 90),"Action")
	MovementLoopAddLocation(NPC, 834.48, -20.89, -661.77, 2)
	MovementLoopAddLocation(NPC, 832.38, -20.31, -654.53, 2)
	MovementLoopAddLocation(NPC, 829.19, -20.26, -651.75, 2)
	MovementLoopAddLocation(NPC, 811.79, -21.20, -649.09, 2)
end

function Action(NPC)
    local choice = MakeRandomInt(1, 4)
    if choice == 1 then
        PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
    elseif choice == 2 then
        PlayFlavor(NPC, "", "", "tap", 0, 0, Spawn)
    elseif choice == 3 then
        PlayFlavor(NPC, "", "", "sniff", 0, 0, Spawn)
    elseif choice == 4 then
        PlayFlavor(NPC, "", "", "yawn", 0, 0, Spawn)
    end
end   

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	if math.random(0, 100) <= 25 then
		FaceTarget(NPC, Spawn)
		local choice = math.random(1, 2)
		if choice == 1 then
			PlayFlavor(NPC, "", "The city is not the most beautiful place in Norrath, but it is at least familiar.", "", 1689589577, 4560189, Spawn)
		elseif choice == 2 then
			Say(NPC, "I've often wondered whether a kerra tail would be a help or hindrance in life amongst the treetops.", Spawn)
		end
	end
	if GetRace(Spawn) == WOOD_ELF and math.random(0, 100) <= 50 then
		SendMessage(Spawn, GetName(NPC) .. " greets you.")
	end
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = math.random(1, 5)

	if choice == 1 then
		PlayFlavor(NPC, "", "To be among the highest leaves and branches of a tree is to feel free.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "I too long for my home in Faydark.  Someday I am sure Tunare will answer us.", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "With the help of Feir'Dal such as you, I know we will be able to rebuild our homes and live in peace among the trees.", "", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		Say(NPC, "The blessing of Tunare is the highest blessing of all.", Spawn)
	elseif choice == 5 then
		Say(NPC, "I've often wondered whether a kerra tail would be a help or hindrance in life amongst the treetops.", Spawn)
	end
end
