--[[
    Script Name    : SpawnScripts/Starcrest/Orudormo.lua
    Script Author  : Dorbin
    Script Date    : 2022.02.24 04:02:50
    Script Purpose : 
                   : 
--]]
local Deposit = 5490

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	   conversation = CreateConversation()
        if GetQuestStep(Spawn, Deposit)==1 then     
        AddConversationOption(conversation, "I'm here to make a deposit for Grekin.", "Deposit1")
        end
    AddConversationOption(conversation, "That is good to know.")
    PlayFlavor(NPC, "voiceover/english/banker_orudormo/qey_village02/bankerorudormo.mp3","","agree",3443069835,648383583,Spawn)
    StartConversation(conversation, NPC, Spawn, "Don't worry about the safety of your assets. We meticulously manage our accounts and currancy.")
end 

 function Deposit1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I need the recpit. Thank you.", "Deposit2")
    PlayFlavor(NPC, "voiceover/english/banker_orudormo/qey_village02/bankerorudormo000.mp3","","thank",3783803084,3333586894,Spawn)
    StartConversation(conversation, NPC, Spawn, "I thought he'd make the deposit, but I suppose it doesn't matter who does it as long as it gets to the bank. Do you need anything else?")
end 

function Deposit2(NPC, Spawn)
    SetStepComplete(Spawn, Deposit, 1)
end


function respawn(NPC)
	spawn(NPC)
end