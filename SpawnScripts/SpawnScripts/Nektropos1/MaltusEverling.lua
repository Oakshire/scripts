--[[
    Script Name    : SpawnScripts/Nektropos1/MaltusEverling.lua
    Script Author  : smash
    Script Date    : 2018.06.07
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 15, "StartSpeech", "Filler")
end

function Filler()
end

function StartSpeech(NPC, Player)
	if GetTempVariable(NPC, "SpeechStarted") ~= "true" then
		FaceTarget(NPC, Player)
		SetTempVariable(NPC, "SpeechStaarted", "true")
		Say(NPC, "Why have you come to disturb me and my family?")
		AddTimer(NPC, 2500, "Speech2")
		SetTempVariable(NPC, "TargetPlayer", Player)
	end
end

function Speech2(NPC)
	Say(NPC, "You enter my home without welcome or being bid to enter.")
	AddTimer(NPC, 2500, "Speech3")
end

function Speech3(NPC)
	Say(NPC, "Then you attack my family and slaughter them.")
	AddTimer(NPC, 2500, "Speech4")
end

function Speech4(NPC)
	Say(NPC, "You have destroyed most of my research subjects.")
	AddTimer(NPC, 2500, "Speech5")
end


function Speech5(NPC)
	Say(NPC, "But it is a minor setback. I shall recreate them from your remains.")
	AddTimer(NPC, 2500, "Speech6")
end

function Speech6(NPC)
	Say(NPC, "Now to harvest the parts necessary to reconstruct my family.")
	AddTimer(NPC, 2500, "Speech7")
end

function Speech7(NPC)
	local pet = GetSpawnByLocationID(GetZone(NPC), 616650)
	if pet ~= nil then
		SetTempVariable(NPC, "pet", pet)
	end
	
	Say(NPC, "I should prepare the machine now, while my creations take care of you.")
	MoveToLocation(NPC, 211, -16, 8.2, 2, "", true)
	MoveToLocation(NPC, 215, -16, 9.2, 2, "", true)
	MoveToLocation(NPC, 214.6, -16, 16.56, 2, "", true)
	MoveToLocation(NPC, 211.9, -16, 17.79, 2, "DelayedPathing")
end

function DelayedPathing(NPC)
	SetHeading(NPC, 0)
	AddTimer(NPC, 2500, "DoDelayedPathing")
end

function DoDelayedPathing(NPC)
	MoveToLocation(NPC, 214.6, -16, 16.56, 2, "", true)
	MoveToLocation(NPC, 215, -16, 9.2, 2, "", true)
	MoveToLocation(NPC, 211.9, -16, 9.5, 2, "Speech8")
end

function Speech8(NPC)
	SetHeading(NPC, 180)
	AddTimer(NPC, 2500, "DelayedSpeech")
end

function DelayedSpeech(NPC)
	Say(NPC, "What, what is happening?")
	local zone = GetZone(NPC)
	--Spawn the lightning effects
	SpawnByLocationID(zone, 616653)
	SpawnByLocationID(zone, 616654)
	SpawnByLocationID(zone, 1585440)
	AddTimer(NPC, 2500, "Speech9")
end

function Speech9(NPC)
	local player = GetTempVariable(NPC, "TargetPlayer")
	
	if player ~= nil then
		FaceTarget(NPC, player)
	end
	
	Say(NPC, "What did you do to my machine? I know this is your fault!")
	AddTimer(NPC, 2500, "BeginAttack")
end

function BeginAttack(NPC)
	Say(NPC, "Stop what you are doing and destroy these intruders.")
	SpawnSet(NPC, "attackable", "1")
	local player = GetTempVariable(NPC, "TargetPlayer")
	local pet = GetTempVariable(NPC, "pet")
	if pet ~= nil then
		SpawnSet(pet, "attackable", "1")
	end
	
	local zone = GetZone(NPC)
	local laborer1 = GetSpawnByLocationID(zone, 616652)
	local laborer2 = GetSpawnByLocationID(zone, 616649)
	
	SpawnSet(laborer1, "attackable", "1")
	SpawnSet(laborer2, "attackable", "1")
	SpawnSet(laborer1, "show_level", "1")
	SpawnSet(laborer2, "show_level", "1")
	
	if player ~= nil then
		Attack(NPC, player)
		Attack(laborer1, player)
		Attack(laborer2, player)
		SpawnSet(laborer1, "show_leve", "1")
		SpawnSet(laborer2, "show_level", "1")
		SpawnSet(NPC, "show_level", "1")
	end
end