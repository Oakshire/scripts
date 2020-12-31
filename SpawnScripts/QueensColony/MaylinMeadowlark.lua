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
            PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1005.mp3", "", "", 0, 0, Spawn)
	elseif choice == 2 then
       	    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1005.mp3", "", "", 0, 0, Spawn)
	else
	    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1005.mp3", "", "", 0, 0, Spawn)
        end

        text = math.random(1,3)

        if text == 1 then
            Say(NPC, "I think I saw something moving out there!")
        elseif text == 2 then
            Say(NPC, "I wouldn't go swimming over at those ruins in the bay if I were you.")
        else
            Say(NPC, "I think I see it, over there!")	
        end

function Emote (NPC)
	PlayAnimation(NPC, 12028)
        local time = math.random (10000,15000) 
	AddTimer(NPC, time, "Emote")
		end
end