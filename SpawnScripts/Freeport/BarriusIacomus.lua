--[[
    Script Name    : SpawnScripts/Freeport/BarriusIacomus.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.12 11:07:15
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/barrius_iacomus/fprt_east/mer_barrius_iacomus.mp3", "", "", 1480714381, 1891140502, Spawn)
    AddConversationOption(conversation, "I am not thirsty.  Thank you anyways.")
    AddConversationOption(conversation, "What kind of trouble?", "dlg01")
    StartConversation(conversation, NPC, Spawn, "Ahoy!  Welcome to the Seafarer's Roost.  Name's Barrius, but all these scallywags just call me Bar.  Be sure to mind your manners.  I don't want any more trouble!")
end

function dlg01(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   local conversation = CreateConversation()
   PlayFlavor(NPC, "voiceover/english/barrius_iacomus/fprt_east/mer_barrius_iacomus000.mp3", "", "", 2301022032, 1978382838, Spawn)
   AddConversationOption(conversation, "Okay.")
   StartConversation(conversation, NPC, Spawn, "One drink too many, one word misspoken, one chair accidentally broken over someone's head and before you know it, we have the Militia in here keeping the peace.  Dead drunks don't pay their tabs!")
 end

function respawn(NPC)

end

