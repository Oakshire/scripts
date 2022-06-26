--[[
	Script Name	: SpawnScripts/Nettleville/LoganMacAdie.lua
	Script Purpose	: Logan MacAdie 
	Script Author	: Scatman
	Script Date	: 2009.08.08
	Script Notes	: 
--]]

function spawn(NPC, Spawn)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
	--AddVisualStateLoop(NPC, 2000, 10000, 11150)
	--AddVisualStateLoop(NPC, 2000, 10000, 11557)
	--AddVisualStateLoop(NPC, 2000, 10000, 13064)
Target(NPC)
end

function respawn(NPC, Spawn)
	spawn(NPC, Spawn)
end

function InRange(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
		PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
    
--[[	local chance = math.random(1, 100)
	if chance <= 20 then
		FaceTarget(NPC, Spawn)
		Say(NPC, "I'm sure you'll find whatever you need if you just keep around.", Spawn)]]--
	end
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    RandomVoiceOver(NPC, Spawn)
    local choice = math.random(1, 6)
	if choice == 1 then
		PlayFlavor(NPC, "", "Well its not easy being the best looking guy in town, but I think I pull it off well.", "flirt", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "I'm feeling stronger than usual today.", "charge", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Some of my friends tell me I'm weak.  I think its true, I've only been able to lift two goblins and an orc lately.", "pout", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "Funny, the wound didn't smell like that yesterday.", "stinky", 1689589577, 4560189, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "", "Strength isn't just the size of your muscles... It's, well... Yeah it is.", "confused", 1689589577, 4560189, Spawn)
	elseif choice == 6 then
		PlayFlavor(NPC, "", "Darn. I chugged that barrel much slower than I chugged the last three.", "gutcramp", 1689589577, 4560189, Spawn)
	end

end

function RandomVoiceOver(NPC, Spawn)
	local choice = math.random(1, 3)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1002.mp3", "", "", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1002.mp3", "", "", 0, 0, Spawn)
	else
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1002.mp3", "", "", 0, 0, Spawn)
	end
end

    function Target(NPC)
    local Karrie = GetSpawn(NPC,2330021)
    if Karrie ~=nil then
    SetTarget(NPC,Karrie)
    end
    end