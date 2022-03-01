--[[
	Script Name	: SpawnScripts/QueensColony/Waulon.lua
	Script Purpose	: Waulon 
	Script Author	: John Adams
	Script Date	: 2008.09.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/waulon/boat_06p_tutorial02/walon_0_004.mp3", "Where's me hat? Needs me lucky hat!", "", 2688932325, 103225044)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/waulon/boat_06p_tutorial02/walon_0_008.mp3", "What? Can't you see? Busy, away with ye!", "", 1608066875, 70639594)
	else
	end

end

