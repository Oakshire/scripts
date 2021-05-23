--[[
    Script Name    : SpawnScripts/Commonlands/Amoora.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.20 07:05:57
    Script Purpose : 
                   : 
--]]

local ARatDivided = 447
local  AHardManToPlease = 450

function spawn(NPC)
    SetTempVariable(NPC, "HAILED", "true")  
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetQuestStep(Spawn, ARatDivided) == 1 then
	local conversation = CreateConversation()
	AddConversationOption(conversation, "You don't happen to mean a handsome little ratonga named Ferink, do you?", "Option1")
	StartConversation(conversation, NPC, Spawn, "Every day is the same, now that he's gone.")
	elseif GetQuestStep(Spawn, AHardManToPlease) == 1 then
    if GetTempVariable(NPC, "HAILED")  == "true" then
	zone = GetZone(Spawn)
	orc1 = SpawnByLocationID(zone, 133772310)
	orc2 = SpawnByLocationID(zone, 133772311)
	orc3 = SpawnByLocationID(zone, 133772312)
	orc4 = SpawnByLocationID(zone, 133772314)
	SetTempVariable(NPC, "HAILED", "false")
	AddTimer(NPC, 300000, "reset", 1)
	end
    else
	PlayFlavor(NPC, "", "...sigh... Hello there... You remind me of him, somehow...", "", 0, 0, Spawn)
end
   end


function reset(NPC)
 SetTempVariable(NPC, "HAILED", "true")  
 end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Calm down, calm down. He asked me to come talk to you and make sure you were alright.", "Option2")
	StartConversation(conversation, NPC, Spawn, "How did you know? Do you know him? Is he here? Father will kill him if he is!")
end

function Option2(NPC, Spawn)
    SetStepComplete(Spawn, ARatDivided, 1)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "That is terrible! I will go talk to Ferink. Maybe there is something we can do.")
	StartConversation(conversation, NPC, Spawn, "How sweet of him. There is just no talking sense into my father, Jaharin. He will hear nothing of our love. I am afraid I have been forbidden to see Ferink.")
end

  

function respawn(NPC)
	spawn(NPC)
end