--[[
	Script Name	: SpawnScripts/ForestRuins/Dockins.lua
	Script Purpose	: Dockins 
	Script Author	: John Adams
	Script Date	: 2008.09.19
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
    if not HasQuest(Spawn,533) and not HasCompletedQuest(Spawn,533) then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/dockins/qey_adv02_ruins_revamp/qst_food_guard_notonquest_c202f7fc.mp3", "Good day, citizen.", "", 3537850523, 972561152,Spawn)
	else
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/dockins/qey_adv02_ruins_revamp/qst_food_guard_", "Having Remmy stare at you all day is not my idea of a pleasant work environment.", "", 0, 0,Spawn)
	    
	 end  
end

