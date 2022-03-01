--[[
    Script Name    : SpawnScripts/qeynos_combined02/ElendiaStarleaf.lua
    Script Author  : Rylec
    Script Date    : 2021.08.07 05:08:04
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

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1051.mp3", "", "", 0, 0, Spawn)
    
    if playerClass == 39 then
        conversation = CreateConversation()

        AddConversationOption(conversation, "What advice do you have for a fellow ranger?", "conv_01")
        AddConversationOption(conversation, "It certainly is.  Good bye.")
        StartConversation(conversation, NPC, Spawn, "Good day, fellow ranger!  It is always nice to meet others that chose this rewarding profession.") 
    else
        local choice = MakeRandomInt(1,2)
        if choice == 1 then
            Say(NPC, "Be gone before I call the guards") -- Kelethin character
        else
            Say(NPC, "Hello there, you seek woodlore do you?") -- Qeynos character
        end
    end
end

function conv_01(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "I'll keep that in mind.", "conv_02")
    StartConversation(conversation, NPC, Spawn, "First and foremost, be in control of the range of any fights you are involved in.  Release a deadly volley of arrows from a distance, and if your foe survives long enough to engage in hand to hand combat, remember that you are also skilled at wielding daggers and swords.")
end

function conv_02(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Sounds like good advice.", "conv_03")
    StartConversation(conversation, NPC, Spawn, "Some of our most effective hand to hand attacks are positional, meaning you need to be behind or beside an opponent for that attack to work.  So you must be aware of situations in which there are multiple foes, and avoid becoming the center of attention, as positional attacks are of little use when you're surrounded!")
end

function conv_03(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "That's useful to know!")
    StartConversation(conversation, NPC, Spawn, "Last but not least, obtain items that add to your agility or stamina, when you find them!  Agility affects both your ability to inflict damage and avoid taking damage from others.  Your stamina affects your health.  This is crucial.")
end

function respawn(NPC)
	spawn(NPC)
end