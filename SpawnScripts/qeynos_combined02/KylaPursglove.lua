--[[
    Script Name    : SpawnScripts/qeynos_combined02/KylaPursglove.lua
    Script Author  : Rylec
    Script Date    : 2021.09.01 05:09:26
    Script Purpose : 
                   : 
--]]

local playerClass = 0

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    playerClass = GetClass(Spawn)
    
    local voice = MakeRandomInt(1,3)
    local choice = MakeRandomInt(1,2)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1053.mp3", "", "", 0, 0, Spawn)
    
    if playerClass == 40 then
        conversation = CreateConversation()

        PlayAnimation(NPC, 11287)
        AddConversationOption(conversation, "What advice do you have for a fellow assassin?", "conv_01")
        AddConversationOption(conversation, "It certainly is.  Good bye.")
        StartConversation(conversation, NPC, Spawn, "Ah, another assassin!  It is a dangerous profession that you have chosen, but well worth it.") 
    else
        if choice == 1 then
            Say(NPC, "Be gone before I call the guards") -- Kelethin character?
        else
            PlayFlavor(NPC, "", "To attack from the shadows is the greatest of advantages.  An enemy cannot defend against an attack it can never see.", "converse", 0, 0, Spawn)
        end
    end
end

function conv_01(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "I would appreciate it.", "conv_02")
    StartConversation(conversation, NPC, Spawn, "Understand that it goes against my very nature to give away anything I consider a trade secret, but I can part with a few bits of wisdom.")
end

function conv_02(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "That's useful to know!", "conv_03")
    StartConversation(conversation, NPC, Spawn, "Procure items that add to your agility or stamina, when you find them!  Agility affects both your ability to inflict damage and avoid taking damage from others.  Your stamina affects your health.  This is crucial.")
end

function conv_03(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "That's interesting.", "conv_04")
    StartConversation(conversation, NPC, Spawn, "Our most devastating attacks are sudden strikes to vital organs from a cover of darkness.  These opportunistic attacks performed under a cover of concealment surprises our target, thus giving them less chance to protect themselves.")
end

function conv_04(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "What should I do then?", "conv_05")
    StartConversation(conversation, NPC, Spawn, "Keep in mind that the majority of our attacks are positional, meaning you need to be behind or beside an opponent for that attack to work.  So you must be aware of situations in which there are multiple foes, as positional attacks are of little use when you're surrounded!")
end

function conv_05(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Thank you for the advice.")
    StartConversation(conversation, NPC, Spawn, "I suggest you employ a divide and conquer tactic, and cut them down as fast as possible.  And do not overlook the power of poisons, in any situation!")
end

function respawn(NPC)
	spawn(NPC)
end