--[[
    Script Name    : SpawnScripts/QueensColony/MaylinMeadowlark.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Maylin Meadowlark dialog
    Modified Date  : 2020.04.09
    Modified by    : premierio015
    Notes          : Added all dialogues and anims
--]]

function spawn (NPC)
      hailed(NPC, Spawn)
	  Emote(NPC)
end

function respawn (NPC)
     spawn(NPC)
end	 

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	math.randomseed(os.time())
	choice = math.random (1, 3)
	str = tostring(choice)
	if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1005.mp3", "I think I saw something moving out there!", "point", 0, 0, Spawn)
	elseif choice == 2 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1005.mp3", "I wouldn't go swimming over at those ruins in the bay if i were you.", "point", 0, 0, Spawn)
	else
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1005.mp3", "I think i see it, over there!", "point", 0, 0, Spawn)
 end


function Emote (NPC)
	PlayAnimation(NPC, 12028)
	AddTimer(NPC, 10000, "Emote")
		end
end