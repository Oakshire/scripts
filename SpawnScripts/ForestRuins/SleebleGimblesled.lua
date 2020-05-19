--[[
	Script Name	: SpawnScripts/ForestRuins/SleebleGimblesled.lua
	Script Purpose	: Sleeble Gimblesled 
	Script Author	: John Adams
	Script Date	: 2008.09.19
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   PlayFlavor(NPC, "", "I've been working on this piece of Luclin for months now!", "orate", 1689589577, 4560189)

   choice = math.random(1,3)

   if choice==1 then
      PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1006.mp3", "", "", 0, 0)
   elseif choice==1 then
      PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1006.mp3", "", "", 0, 0)
   else
      PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "", 0, 0)
   end

end
