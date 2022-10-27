--[[
    Script Name    : SpawnScripts/WestFreeport/BaronZafimus.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.26 07:10:09
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC,Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,1)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/baron_zafimus/fprt_west/100_soc_human_militia_officer_zafimus_no_23f6c2f6.mp3", "Mercy and kindness are for the undisciplined.  Victory follows only from brutality.  ", "", 2218115443, 3656215650, Spawn, 0)
	end
end