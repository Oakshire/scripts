--[[
    Script Name    : SpawnScripts/Freeport/MissionaryGZule.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.15 06:07:47
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/missionary_g_zule/fprt_north/qst_gzule.mp3", "", "", 1791825577, 3485372568, Spawn)
    AddConversationOption(conversation, "Is that why you are afraid to go in yourself, hmm?", "dlg01")
    AddConversationOption(conversation, "I think I can handle myself just fine, thanks.")
    StartConversation(conversation, NPC, Spawn, "You better watch your step if you choose to enter the Temple of War. I would suspect the greeting for a person like yourself would be a dagger in the back rather than a handshake.")
end

function dlg01(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/missionary_g_zule/fprt_north/qst_gzule002.mp3", "", "", 2865163916, 2862700718, Spawn)
    AddConversationOption(conversation, "For some reason I see you standing here for a while.") 
    StartConversation(conversation, NPC, Spawn, "I'll have you know that I have done all the sacrificing I need to do, lucky for your worthless carcass.  I only have to find a symbol of the old paladins to desecrate to fulfill my advancement.")
end

function respawn(NPC)

end

