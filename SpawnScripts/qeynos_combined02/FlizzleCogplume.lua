--[[
    Script Name    : SpawnScripts/qeynos_combined02/FlizzleCogplume.lua
    Script Author  : Rylec
    Script Date    : 2021.08.13 02:08:24
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

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1040.mp3", "", "", 0, 0, Spawn)
    
    if playerClass == 33 then
        conversation = CreateConversation()

        AddConversationOption(conversation, "What advice do you have for a fellow swashbuckler?", "conv_01")
        AddConversationOption(conversation, "It certainly is.  Good bye.")
        StartConversation(conversation, NPC, Spawn, "Welcome, fellow swashbuckler!  It is such a pleasure to meet another dashing rogue within this city.") 
    else
        local choice = MakeRandomInt(1,2)
        if choice == 1 then
            Say(NPC, "Be gone before I call the guards") -- Kelethin character
        else
            Say(NPC, "Well, well, what have we here?") -- Qeynos character
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
    StartConversation(conversation, NPC, Spawn, "We have talents in dealing damage but we are particularly skilled at weakening our opponent's attacks.")
end

function conv_03(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "I bet it is!", "conv_04")
    StartConversation(conversation, NPC, Spawn, "Keep in mind that some of our attacks are positional, meaning you need to be behind or beside an opponent for that attack to work.  But thankfully, we have enough devastating attacks that are straightforward and can be used from any position.  This is very useful when dealing with multiple opponents!")
end

function conv_04(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Thank you for the advice.")
    StartConversation(conversation, NPC, Spawn, "Focus on improving your own skills for your opponent is sure to be defeated in the face of your growing prowess.")
end

function respawn(NPC)
	spawn(NPC)
end