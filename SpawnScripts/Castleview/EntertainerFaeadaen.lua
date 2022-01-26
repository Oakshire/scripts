--[[
	Script Name	: SpawnScripts/Castleview/EntertainerFaeadaen.lua
	Script Purpose	: Entertainer Faeadaen 
	Script Author	: Scatman
	Script Date	: 2009.10.03
	Script Notes	: 
--]]

local Quest = 238
function spawn(NPC)
    ProvidesQuest(NPC, Quest)
    SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
end

function respawn(NPC)
    spawn(NPC)
end

function InRange (NPC,Spawn)
    if math.random(1, 100) <= 66 then
    local choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/entertainer_faeadaen/qey_village04/100_entertainer_faeadaen_callout_7bbafc74.mp3", "Don't let your eyes wander or you'll miss the magic! Come closer, traveler. You must see to believe.", "shimmy", 250974815, 3465292886, Spawn)
	elseif choice == 2 then
	    PlayFlavor(NPC, "voiceover/english/entertainer_faeadaen/qey_village04/100_entertainer_faeadaen_multhail1_4c72e751.mp3", "Please, come back for my next show - I've no room for more onlookers. Why don't you belly up to the bar and try one of Bulurg's brews?", "no", 3560057212, 3299104389, Spawn)
	elseif choice ==3 then
	    PlayFlavor(NPC, "", "", "dance", 0, 0, Spawn)
	else
PlayFlavor(NPC, "voiceover/english/entertainer_faeadaen/qey_village04/100_entertainer_faeadaen_multhail2_2d3351bb.mp3", "Step up and watch as I make lights dance and coins disappear into thin air!", "", 3189499038, 1784304503, Spawn)
    end
end
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    		PlayFlavor(NPC, "voiceover/english/entertainer_faeadaen/qey_village04/100_entertainer_faeadaen_multhail2_2d3351bb.mp3", "", "orate", 3189499038, 1784304503, Spawn)
    local con = CreateConversation()
    if not HasQuest (Spawn, Quest) and not HasCompletedQuest (Spawn, Quest) then
    AddConversationOption(con, "You must be quite the entertainer. Need any help?", "NeedHelp")
    end
    if GetQuestStep(Spawn, Quest)==2 then
    AddConversationOption(con, "I told Valean you wouldn't be able to make it to dinner tonight.", "NoDinner")
    end
    AddConversationOption(con, "I would love a performance. [ 2 Silver ]", "Perforamnce")
    AddConversationOption(con, "I'll keep my coins, thank you.")
    StartConversation(con, NPC, Spawn, "Step up and watch as I make lights dance and coins disappear into thin air!")
end

function Arbos(NPC,Spawn)
    FaceTarget(NPC, Spawn)
    		PlayFlavor(NPC, "", "", "orate", 0, 0, Spawn)
    local con = CreateConversation()
    AddConversationOption(con, "You must draw quite the audiance here.", "NeedHelp")
    AddConversationOption(con, "I'll keep my coins, thank you.")
    StartConversation(con, NPC, Spawn, "Customers love my magic tricks! Actually, a little too much. Bulurg asked me to work late tonight. Could you ask Valean at the inn and let me know I can't dine with him tonight? I appreciate your help.")
end

function NeedHelp(NPC,Spawn)
    FaceTarget(NPC, Spawn)
    		PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    local con = CreateConversation()
    AddConversationOption(con, "I'll deliver the message for you.", "GiveQuest")
    AddConversationOption(con, "I'm busy. Sorry.")
    StartConversation(con, NPC, Spawn, "Customers love my magic tricks! Actually, a little too much. Bulurg asked me to work late tonight. Could you ask Valean at the inn and let me know I can't dine with him tonight? I appreciate your help.")
end

function NoDinner(NPC,Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "", "thank", 0, 0, Spawn)
    SetStepComplete(Spawn, Quest, 2)
    local con = CreateConversation()
    AddConversationOption(con, "I just might.")
    StartConversation(con, NPC, Spawn, "Thank you for telling him. If you have a moment, step inside and try one of Bulurg's special brews.")
end

function Perforamnce(NPC,Spawn)
    RemoveCoin(Spawn, 200)
    FaceTarget(NPC, Spawn)
    		PlayFlavor(NPC, "", "With pleasure.", "nod", 0, 0, Spawn)
    	
    		AddTimer(NPC, 900, "Shine",1, Spawn) 
    		AddTimer(NPC, 1100, "Flourish",1, Spawn)   
    	  --AddTimer(NPC, 9800, "Glow",1, Spawn) --a bit much, but timing is right
    		AddTimer(NPC, 10000, "Shimmy",1, Spawn)
    		AddTimer(NPC, 12000,"Kiss",1, Spawn)
    		AddTimer(NPC, 15500,"Finale",1, Spawn)
end

function Flourish(NPC,Spawn)
    FaceTarget(NPC,Spawn)
    PlayFlavor(NPC, "", "", "flourish", 0, 0, Spawn)
end

function Finale(NPC,Spawn)
 PlayFlavor(NPC, "", "", "result_fireworks_flare_coins_burst", 0, 0, Spawn)
end
    
--function Glow(NPC,Spawn) --a bit much, but timing is right
--   FaceTarget(NPC,Spawn)
--    PlayFlavor(NPC, "", "", "result_sparkles_clinging_soft", 0, 0, Spawn)
--end

function Shimmy(NPC,Spawn)
    FaceTarget(NPC,Spawn)
    PlayFlavor(NPC, "", "", "shimmy", 0, 0, Spawn)
end

function Shine(NPC,Spawn)

  PlayFlavor(NPC, "", "", "result_coins_falling", 0, 0, Spawn)
end

function Kiss(NPC,Spawn)
    FaceTarget(NPC,Spawn)
    PlayFlavor(NPC, "", "", "kiss", 0, 0, Spawn)
end


function GiveQuest(NPC, Spawn)
	OfferQuest(NPC, Spawn, Quest)
end

function AcceptedQuest(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "", "thank", 0, 0, Spawn)
	local con = CreateConversation()
	AddConversationOption(con, "My pleasure.")
	StartConversation(con, NPC, Spawn, "Oh, thank you! I just can't break away to deliver it myself.")
end