--[[
    Script Name    : SpawnScripts/QueensColony/MaylinMeadowlark.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Maylin Meadowlark dialog
    Modified Date  : 2020.04.09
    Modified by    : premierio015
    Notes          : Added all dialogues and anims
--]]

function spawn(NPC)
        EmotePoint(NPC)
end

function respawn(NPC)
        spawn(NPC)
end	 

function hailed(NPC, Spawn)
        FaceTarget(NPC, Spawn)
	math.randomseed(os.time())
	choice = math.random (1, 3)
	str = tostring(choice)

        PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..choice.."_1005.mp3", "", "", 0, 0, Spawn)

        text = math.random (1, 3)

        if text == 1 then
            Say(NPC, "I think I saw something moving out there!")
        elseif text == 2 then
            Say(NPC, "I wouldn't go swimming over at those ruins in the bay if I were you.")
        else
            Say(NPC, "I think I see it, over there!")	
        end
end

function EmotePoint(NPC)
	PlayAnimation(NPC, 12028)
        local time = math.random (10000,15000) 
	AddTimer(NPC, time, "EmotePoint")
end