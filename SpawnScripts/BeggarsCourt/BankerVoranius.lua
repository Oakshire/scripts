--[[
	Script Name	: SpawnScripts/BeggarsCourt/BankerVoranius.lua
	Script Purpose	: Banker Voranius <Banker>
	Script Author	: John Adams
	Script Date	: 2009.04.05
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local DonationsfromtheBanker = 5657

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	if GetQuestStep(Spawn, DonationsfromtheBanker) == 1 then
        SetStepComplete(Spawn, DonationsfromtheBanker, 1)	
    end
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/banker_voranius/fprt_hood04/bnk_banker_voranius.mp3", "", "", 2601161199, 994867740, Spawn)
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "Hello there.  Voranius is my name.  I can help you with all your banking needs.")

end