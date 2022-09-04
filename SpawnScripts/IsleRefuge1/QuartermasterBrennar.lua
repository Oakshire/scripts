--[[
    Script Name    : SpawnScripts/IsleRefuge1/QuartermasterBrennar.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.03 04:09:48
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")		
end

function InRange(NPC,Spawn)
RandomGreeting(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/quartermaster_brennar/tutorial_island02_fvo_000.mp3", "I've got everything you need right here!  I hope you managed to hold onto some coin while you were adrift.", "hello", 859048229, 1201585367, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/quartermaster_brennar/tutorial_island02_fvo_callout2.mp3", "All refugees need to resupply! Come get your gear!", "beckon",644592195, 2709200819, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/quartermaster_brennar/tutorial_island02_fvo_callout1.mp3", "Refugees! Get your basic supplies right here!", "wave", 2626616193, 3313059866, Spawn, 0)
	end
end