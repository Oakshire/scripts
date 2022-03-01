--[[
    Script Name    : SpawnScripts/qeynos_combined02/MarshalSurefoot.lua
    Script Author  : Rylec
    Script Date    : 2021.08.06 09:08:28
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    local voice = MakeRandomInt(1,3)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1024.mp3", "", "", 0, 0, Spawn)
    
    conversation = CreateConversation()

    AddConversationOption(conversation, "Do deputies get paid well?", "conv_01")
    AddConversationOption(conversation, "Sorry to hear that. I must be going.")
    StartConversation(conversation, NPC, Spawn, "Stand stout! You'd make a fine deputy.")
end

function conv_01(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "I can face the titans of the forest.", "conv_02")
    AddConversationOption(conversation, "I am not facing any titans today.")
    StartConversation(conversation, NPC, Spawn, "Aha!  A mercenary!  I can use your mettle for testing the strengths of the enemy.  Can you overcome the titans of the forest?  What do ya say, soldier?")
end

function conv_02(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "I will face the titans.")
    StartConversation(conversation, NPC, Spawn, "Then stand firm and venture to the Forest Ruins.  The foes act as Forgotten Guardians.  They prey upon the people ... stand tall, soldier!  Crush a few and return with a tale of victory!")
end

function respawn(NPC)
	spawn(NPC)
end