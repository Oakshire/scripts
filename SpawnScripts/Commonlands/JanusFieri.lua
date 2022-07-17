--[[
    Script Name    : SpawnScripts/Commonlands/JanusFieri.lua
    Script Author  : torsten
    Script Date    : 2021.05.24 09:05:26
    Script Purpose : 
                   : 
--]]

local DeliverHelptoJanusFieri = 5660

function spawn(NPC)

end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	
	if GetQuestStep(Spawn, DeliverHelptoJanusFieri) == 1 then
        SetStepComplete(Spawn, DeliverHelptoJanusFieri, 1)
    end
	if GetQuestStep(Spawn, DeliverHelptoJanusFieri) == 3 then
        SetStepComplete(Spawn, DeliverHelptoJanusFieri, 3)
    end
	if GetQuestStep(Spawn, DeliverHelptoJanusFieri) == 5 then
        SetStepComplete(Spawn, DeliverHelptoJanusFieri, 5)
    end
	
	AddConversationOption(conversation, "That's good to know.  See you around!")
    StartConversation(conversation, NPC, Spawn, "Greetings.  Janus Fieri, at your service.")
	PlayFlavor(NPC, "voiceover/english/janus_fieri/commonlands/quests/janusfieri/janusfieri001.mp3", "", "hail", 2406224045, 2387293986, Spawn)
end