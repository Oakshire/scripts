--[[
    Script Name    : SpawnScripts/Freeport/AnniaKaeso.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.04 06:08:45
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
   
    PlayFlavor(NPC, "voiceover/english/annia_kaeso/fprt_south/mer_anniakaeso.mp3", "", "", 3665529784, 3634349576, Spawn)
    AddConversationOption(conversation, "Thank you for your time.  I must be going now.")
    StartConversation(conversation, NPC, Spawn, "Hello.  Hello.  Welcome.  You look out of place here in Freeport.  Almost as if you were something blown in by the wind or swept ashore by the tide.  No wait.  It was that dream!")
end

function respawn(NPC)

end

