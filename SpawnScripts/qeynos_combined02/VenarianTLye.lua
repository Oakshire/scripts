--[[
    Script Name    : SpawnScripts/qeynos_combined02/VenarianTLye.lua
    Script Author  : Rylec
    Script Date    : 2021.08.07 09:08:22
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

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1054.mp3", "", "", 0, 0, Spawn)
    
    if playerClass == 44 then
        conversation = CreateConversation()

        AddConversationOption(conversation, "What advice do you have for a fellow channeler?", "conv_01")
        AddConversationOption(conversation, "I will keep that in mind.  Thank you.")
        StartConversation(conversation, NPC, Spawn, "Welcome, " .. GetName(Spawn) .. ".  I am here if you have any questions.") 
    else
        Say(NPC, "The spirits call to each of us, but few of us can hear them.")
    end
end

function conv_01(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Great!  What else should I know?", "conv_02")
    StartConversation(conversation, NPC, Spawn, "You will want to focus on your Wisdom and Stamina, if you can find items that enhance those abilities.  Wisdom will help increase your spell potency and increase your mana pool, and Stamina will help you take more hits and last longer in combat.")
end

function conv_02(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Okay, and what about my construct?", "conv_03")
    StartConversation(conversation, NPC, Spawn, "Conduits are your abilities.  When you channel them, your Dissonance will grow.  This increased Dissonance will disrupt your harmony with the Truespirit, and you will no longer be able to channel your Conduits.  You are better served by keeping your Dissonance as low as possible in most circumstances.")
end

function conv_03(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "What more can you tell me?", "conv_04")
    StartConversation(conversation, NPC, Spawn, "Your construct is your constant companion.  It is nearly invincible, and even the most devastating attacks will usually just render it inoperable.  It can absorb some of the damage of incoming attacks, and can mean the difference between life and death for you or an ally.")
end

function conv_04(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Thank you.  I think that's all I need to know for now.")
    StartConversation(conversation, NPC, Spawn, "You can use the essences of animals to change the appearance and function of your construct.  There are many creatures throughout our world, so I encourage you to experiment with them and see what suits your situation best.")
end

function respawn(NPC)
	spawn(NPC)
end