--[[
    Script Name    : SpawnScripts/WailingCaves/ArianaNeovra.lua
    Script Author  : Premierio015
    Script Date    : 2021.02.23 07:02:59
    Script Purpose : 
                   : 
--]]

local TheSearchForArianna = 5211

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/ariana_neovra/wailingcaves/ariana_neovra/ariana_neovra001.mp3", "", "", 3268815580, 3756097310, Spawn)
     conversation = CreateConversation()
      if GetQuestStep(Spawn, TheSearchForArianna) == 1  then
        AddConversationOption(conversation, "Orwen sent me to look for you.", "dlg1")
      end
      AddConversationOption(conversation, "Ok, I'll be going then.")
      StartConversation(conversation, NPC, Spawn, "There's more than meets the eye here, friend. Don't fret! My destiny is by choice.")
  end

function dlg1(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  PlayFlavor(NPC, "voiceover/english/ariana_neovra/wailingcaves/ariana_neovra/ariana_neovra002.mp3", "", "", 612826065, 22365633, Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "I see, go on.", "dlg2")
  StartConversation(conversation, NPC, Spawn, "I miss Orwen so much, but you must understand that I chose to stay here.  The orcs were planning an attack on my people, and I made a deal to cooperate with them and halt the attack.  While I 'm forced to stay here, at least I know my people, especially Orwen, are safe.")
end

function dlg2(NPC, Spawn)
     FaceTarget(NPC, Spawn)
     PlayFlavor(NPC, "voiceover/english/ariana_neovra/wailingcaves/ariana_neovra/ariana_neovra003.mp3", "", "", 1549784933, 2459194121, Spawn)
     SetStepComplete(Spawn, TheSearchForArianna, 1)
      conversation = CreateConversation()
      AddConversationOption(conversation, "You are very brave, I'll take this back to Orwen.")
      StartConversation(conversation, NPC, Spawn, "If Orwen comes looking for me, they will kill us both and launch their attack. You must make Orwen believe I'm gone. This will force him to move on. Here, take this necklace back to him. He knows I would never part with this necklace if I were alive.")
end
    
    
    
function respawn(NPC)

end

