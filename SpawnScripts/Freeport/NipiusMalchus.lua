--[[
    Script Name    : SpawnScripts/Freeport/NipiusMalchus.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.04 06:08:49
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
   
    PlayFlavor(NPC, "voiceover/english/nipius_malchus/fprt_south/nipiusmalchus000.mp3", "", "", 266175188, 3990993797, Spawn)
    AddConversationOption(conversation, "It would be best if you forgot I was ever here...")
    StartConversation(conversation, NPC, Spawn, "Hail to you as well.  Forgive me if we've met before...  I'm a little distracted.  I've more custom orders for armor then I've the tradesmen to match.")
end

function respawn(NPC)

end

