--[[
    Script Name    : SpawnScripts/VerminSnye/AleynaMcMallon.lua
    Script Author  : Premierio015
    Script Date    : 2020.05.17 10:05:13
    Script Purpose : Aleyna McMallon Dialog
    Script Notes   : No info about any of quests activities.
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/aleyna_mcmallon/qey_catacomb02/aleyna_mcmallon000.mp3", "", "", 1201318952, 1193211006, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Nothing, I was just looking around", "watchyourback")
    AddConversationOption(conversation, "Sorry, I'm leaving now.")
    StartConversation(conversation, NPC, Spawn, "Yes!? What do you want?")
end

function watchyourback(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  PlayFlavor(NPC, "voiceover/english/aleyna_mcmallon/qey_catacomb02/aleyna_mcmallon001.mp3", "", "", 3628459964, 2982253188, Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "Thanks for the advice.")
  StartConversation(conversation, NPC, Spawn, "Well, then, you best watch your back. This place is crawling with death and the festering plague.")
end

function respawn(NPC)
         spawn(NPC)
end