--[[
	Script Name      :    SpawnScripts/everfrost_frostfell_new01/JarokFrostpetal.lua
	Script Purpose   :    Jarok Frostpetal
	Script Author    :    vo1d
	Script Date      :    2019.10.29
	Script Notes     :    
--]]

local ADeepiceMystery = 486

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)

    if HasCompletedQuest(Spawn, ADeepiceMystery) then
    elseif HasQuest(Spawn, ADeepiceMystery) then
        if GetQuestStep(Spawn, ADeepiceMystery) == 19 then
            DeepiceMysteryChat1(NPC, Spawn)
		end
    else
        Greetings(NPC, Spawn)
    end
end


function OutRange(NPC, Spawn)
end

function Greetings(NPC, Spawn)
end

function DeepiceMysteryChat1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()
    
    AddConversationOption(Conversation, "What are you talking about? Who won't answer you?", "DeepiceMysteryChat2")
    StartConversation(Conversation, NPC, Spawn, "That does it. She will never answer my prayers now!")
end

function DeepiceMysteryChat2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()
    
    AddConversationOption(Conversation, "Was this to glorify E'ci? You were freezing other people.", "DeepiceMysteryChat3")
    StartConversation(Conversation, NPC, Spawn, "The Icy Guardian. She has manifested upon Norrath a few times since the return of the gods, but her absence is still felt. How do you not see what I am doing here?")
end

function DeepiceMysteryChat3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()
    
    AddConversationOption(Conversation, "You thought this could have brought about her return?", "DeepiceMysteryChat4")
    StartConversation(Conversation, NPC, Spawn, "We are all her worshipers. All of us within this Wonderland Village carry her trinkets, and are blessed by her touch upon this world! They would have gladly given themselves if it meant her lasting return")
end

function DeepiceMysteryChat4(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()
    
    AddConversationOption(Conversation, "As well intended as that is, I must insist that you stop. What you've done here is beautiful. It is an icy wonderland, worthy of her name. If she wishes to return, she will.", "DeepiceMysteryChat5")
    StartConversation(Conversation, NPC, Spawn, "I was hoping a grand sacrifice, and a beautiful temple, all in her name, would gain her attention, and give her a proper place on Norrath to reside.")
end

function DeepiceMysteryChat5(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()
    
    AddConversationOption(Conversation, "Exactly!", "DeepiceMysteryComplete")
    StartConversation(Conversation, NPC, Spawn, "And this place will remain a sanctuary for those that wish to be close to her magic.")
end

function DeepiceMysteryComplete(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Conversation = CreateConversation()

    if GetQuestStep(Spawn, ADeepiceMystery) == 19 then
        SetStepComplete(Spawn, ADeepiceMystery, 19)
    end

    AddConversationOption(Conversation, "You're welcome.")
    StartConversation(Conversation, NPC, Spawn, "I can live with that, " .. GetName(Spawn).. ". I just had wanted to do more. Thank you.")
end
