--[[
	Script Name	: SpawnScripts/SouthQeynos/TabbyCopperpot.lua
	Script Purpose	: Tabby Copperpot <Provisioner>
	Script Author	: Dorbin
	Script Date	: 2022.05.10
	Script Notes	: 
--]]
local letter = 5527

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")

end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
 if GetFactionAmount(Spawn,11) <0 then
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
    else
	PlayFlavor(NPC, "voiceover/english/merchant_tabby_copperpot/qey_south/tabbycopperpot000.mp3", "", "happy", 3975328823, 1035271851, Spawn)
	if GetQuestStep(Spawn,letter)==1 then
	AddConversationOption(conversation, "Here is a letter from Tara.  She asked me to deliver it to you.","LetterDone")
	end
	AddConversationOption(conversation, "I am just browsing.", "dlg_3_1")
	StartConversation(conversation, NPC, Spawn, "I have many baked goods that would be sure to tickle your taste buds and satisfy your tummy.")
    end
end

function LetterDone(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/merchant_tabby_copperpot/qey_south/tabbycopperpot001.mp3", "", "heelclick", 3156824996,1043582729, Spawn)
	AddConversationOption(conversation, "I'm glad I could help.","Delivered")
	StartConversation(conversation, NPC, Spawn, "Oh goody!  I've been waiting for a letter from her for some time now.  Since she started her training she never has time to visit!")
end   

function Delivered(NPC, Spawn)
    SetStepComplete(Spawn,letter,1)
	FaceTarget(NPC, Spawn)
end

