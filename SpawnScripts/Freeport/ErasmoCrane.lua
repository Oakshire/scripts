--[[
    Script Name    : SpawnScripts/Freeport/ErasmoCrane.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.21 09:07:05
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
  
   PlayFlavor(NPC, "voiceover/english/erasmo_crane/fprt_south/erasmocrane000.mp3", "", "no", 895369696, 3352176574, Spawn)
   AddConversationOption(conversation, "You are excused.")
   StartConversation(conversation, NPC, Spawn, "Hello, citizen. I'd love to chat, but I'm busy getting my ship ready for a short fishing trip.  If you'll excuse me...")
end

function respawn(NPC)

end

