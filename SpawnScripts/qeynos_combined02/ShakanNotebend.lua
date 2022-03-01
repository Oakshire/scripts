--[[
    Script Name    : SpawnScripts/qeynos_combined02/ShakanNotebend.lua
    Script Author  : Rylec
    Script Date    : 2021.08.18 05:08:40
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

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1048.mp3", "", "", 0, 0, Spawn)
    
    if playerClass == 37 then
        conversation = CreateConversation()

        PlayAnimation(NPC, 10745)
        AddConversationOption(conversation, "What advice do you have for a fellow dirge?", "conv_01")
        AddConversationOption(conversation, "I certainly will.  Good bye.")
        StartConversation(conversation, NPC, Spawn, "I thought I heard another dirge singing songs of lamentation.  If I can be of any service, let me know.") 
    else
        if choice == 1 then
            Say(NPC, "Be gone before I call the guards") -- Kelethin character?
        else
            conversation = CreateConversation()  -- Qeynos character

            AddConversationOption(conversation, "Just looking around.")
            StartConversation(conversation, NPC, Spawn, "Well met, " .. GetName(Spawn) .. ". What brings you to the Elddar Grove this fine day?") 
        end
    end
end

function conv_01(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "That's useful to know!", "conv_02")
    StartConversation(conversation, NPC, Spawn, "If you find items that add to your agility or stamina, then take them!  Agility affects both your ability to inflict damage and avoid taking damage from others.  Your stamina affects your health.  This is crucial.")
end

function conv_02(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "That's interesting.", "conv_03")
    StartConversation(conversation, NPC, Spawn, "Our songs of despair are incredibly valuable to others.  They can bolster both fighters and other scouts by increasing their defense and offense.  And the most experienced dirges can even raise a fallen comrade with a song.")
end

function conv_03(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Thank you for the advice.")
    StartConversation(conversation, NPC, Spawn, "But do not neglect your melee skills.  These are essential to our survival!  Songs of despair can demoralize and weaken your foe, but without a weapon to inflict damage there is no killing blow.")
end

function respawn(NPC)
	spawn(NPC)
end