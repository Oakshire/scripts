--[[
   Script Name   : SpawnScripts/TheThunderingSteppes/OldenHighguard.lua
   Script Purpose   : Olden Highguard 
   Script Author   : Jabantiz
   Script Date   : 2016.06.13
   Script Notes   : Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
   spawn(NPC)
end

function hailed(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/olden_highguard/steppes/oldenhighguard000.mp3", "", "", 101809511, 0, Spawn)
   AddConversationOption(conversation, "Be careful, this land can be pretty dangerous.")
   StartConversation(conversation, NPC, Spawn, "Heather and I just made the journey from the docks.  The trip went smoothly, although we felt like there were eyes upon us from high atop the rocks.")
end
