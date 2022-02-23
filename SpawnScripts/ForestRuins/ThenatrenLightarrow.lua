--[[
	Script Name	: SpawnScripts/ForestRuins/ThenatrenLightarrow.lua
	Script Purpose	: Thenatren Lightarrow 
	Script Author	: John Adams
	Script Date	: 2008.09.19
	Script Notes	: Auto-Generated Conversation from PacketParser Data - added flavor emotes 2022.2.20 Dorbin
--]]

function spawn(NPC)
	EcologyEmotes(NPC,Spawn)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")

end


function InRange(NPC, Spawn) 
   if math.random(1, 100) <= 80 then
         choice = math.random(1,4)

            if choice ==1 then
            PlayFlavor(NPC, "", "Careful near those ruins, friend!  It's a magical place and full of danger!", "point", 0, 0, Spawn)
            elseif choice ==2 then 
            FaceTarget(NPC, Spawn)
            PlayFlavor(NPC, "", "The air is restless. Be careful, my friend!", "hello", 0, 0, Spawn)
            elseif choice ==3 then
            FaceTarget(NPC, Spawn)    
            PlayFlavor(NPC, "", "I would watch my step near those ruins, if I were you!  There's been a lot of activity there lately.", "hello", 0, 0, Spawn)
            else
            FaceTarget(NPC, Spawn)    
            PlayFlavor(NPC, "", "I've been sent to keep a close watch on the ruins. There has been a lot of activity here lately.", "hello", 0, 0, Spawn)
            
            end
            end
end

function EcologyEmotes(NPC,Spawn)
            local choice = math.random(1,4)
            
                if choice == 1 then
	            PlayFlavor(NPC, "", "", "peer", 0, 0, Spawn)
	            AddTimer(NPC, 12000, "EcologyEmotes",1,Spawn) 
	            
	            elseif choice == 2 then
	            PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
	            AddTimer(NPC, 11000, "EcologyEmotes",1,Spawn) 
	            
                elseif choice == 3 then
	            PlayFlavor(NPC, "", "", "sniff", 0, 0, Spawn)
	            AddTimer(NPC, 10000, "EcologyEmotes",1,Spawn) 
	            
	            elseif choice == 4 then
	            PlayFlavor(NPC, "", "", "stare", 0, 0, Spawn)
	            AddTimer(NPC, 8000, "EcologyEmotes",1,Spawn) 
            end	  
    end

function hailed(NPC, Spawn)
   FaceTarget(NPC, Spawn)

	PlayFlavor(NPC, "", "Watch yourself near those ruins, they are dangerous!", "", 1689589577, 4560189)

end

