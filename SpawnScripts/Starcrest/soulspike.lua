--[[
	Script Name		:	SpawnScripts/Starcrest/soulspike.lua
	Script Purpose	:	<purpose>
	Script Author	:	Jabantiz
	Script Date		:	6/15/2018
	Script Notes	:	<special-instructions>
--]]

-- Quest ID's
local CONFRONTATION = 321

-- Item ID's
local NULLIFICATION_STONE = 10087

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, Message)
	if HasItem(Spawn, NULLIFICATION_STONE) and HasQuest(Spawn, CONFRONTATION) and GetQuestStep(Spawn, CONFRONTATION) == 2 then
		while HasItem(Spawn, NULLIFICATION_STONE, 1) do
			RemoveItem(Spawn, NULLIFICATION_STONE)
		end
        PlaySound(NPC, "sounds/widgets/triggered_environmental/enviro_glassbreak_med001.wav",  GetX(NPC), GetY(NPC), GetZ(NPC), Spawn)		
    PlayAnimation(NPC, 2565)
    AddTimer(NPC,1600,"Update",Spawn)
        end
end

 function Update(NPC, Spawn, Message)
		SetStepComplete(Spawn, CONFRONTATION, 2)
		local velderoth = GetSpawn(Spawn, 2340062)
		if velderoth ~= nil then
        FaceTarget(velderoth,Spawn)
		PlayFlavor(velderoth, "voiceover/english/tutorial_revamp/velderoth_malraen/qey_village02/qst_velderoth_howcould_ea37cf7d.mp3", "NO!!! How could you do such a thing?", "scream", 4138921089, 741301826, Spawn, 4)
		end
		
		local stand = GetSpawn(Spawn, 2340126)
		if stand ~= nil then
			Despawn(stand)
		end
		
		Despawn(NPC)
	end
