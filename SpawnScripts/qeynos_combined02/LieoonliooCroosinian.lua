--[[
    Script Name    : SpawnScripts/qeynos_combined02/LieoonliooCroosinian.lua
    Script Author  : Rylec
    Script Date    : 2021.09.01 04:09:07
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    playerClass = GetClass(Spawn)
    
    local voice = MakeRandomInt(1,3)
    local choice = MakeRandomInt(1,9)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1047.mp3", "", "", 0, 0, Spawn)
    
    if playerClass == 36 then
        conversation = CreateConversation()

        PlayAnimation(NPC, 11682)
        AddConversationOption(conversation, "What advice do you have for a fellow troubador?", "conv_01")
        AddConversationOption(conversation, "It certainly can. Good bye.")
        StartConversation(conversation, NPC, Spawn, "Welcome, fellow troubador.  This city can always use more talented performers!") 
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
    StartConversation(conversation, NPC, Spawn, "Our songs of cheer are incredibly valuable to others.  They can embolden mages and anyone else wielding magical spells, increasing their offense and granting them the power to perform outstanding feats.")
end

function conv_03(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Thank you for the advice.")
    StartConversation(conversation, NPC, Spawn, "But do not neglect your weapon skills.  These are essential to our survival!  Uplifting songs can strengthen you and your group mates, but without a weapon to inflict damage there is no killing blow.")
end

function respawn(NPC)
	spawn(NPC)
end