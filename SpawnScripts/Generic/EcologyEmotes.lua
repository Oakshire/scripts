--[[
    Script Name    : SpawnScripts/Generic/EcologyEmotes.lua
    Script Author  : Dorbin
    Script Date    : 2022.02.20 05:02:12
    Script Purpose : For generic NPC Flavor emotes - particular merchants.
                   : 
--]]
function EcologyEmotes(NPC,Spawn)
            local choice = math.random(1,10)
            
                if choice == 1 then
	            PlayFlavor(NPC, "", "", "tap", 0, 0, Spawn)
	            AddTimer(NPC, 12000, "EcologyEmotes",1,Spawn) 
	            
	            elseif choice == 2 then
	            PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
	            AddTimer(NPC, 11000, "EcologyEmotes",1,Spawn) 
	            
                elseif choice == 3 then
	            PlayFlavor(NPC, "", "", "shiver", 0, 0, Spawn)
	            AddTimer(NPC, 10000, "EcologyEmotes",1,Spawn) 
	            
	            elseif choice == 4 then
	            PlayFlavor(NPC, "", "", "sniff", 0, 0, Spawn)
	            AddTimer(NPC, 8000, "EcologyEmotes",1,Spawn) 
	            
                elseif choice == 5 then
	            PlayFlavor(NPC, "", "", "confused", 0, 0, Spawn)
	            AddTimer(NPC, 7000, "EcologyEmotes",1,Spawn) 
	            
	            elseif choice == 6 then
	            PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	            AddTimer(NPC, 5000, "EcologyEmotes",1,Spawn) 
	            
	            elseif choice == 7 then
	            PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	            AddTimer(NPC, 6000, "EcologyEmotes",1,Spawn)
	            
	            elseif choice == 8 then
	            PlayFlavor(NPC, "", "", "yawn", 0, 0, Spawn)
	            AddTimer(NPC, 9000, "EcologyEmotes",1,Spawn)
	            
	            elseif choice == 9 then
	            PlayFlavor(NPC, "", "", "smirk", 0, 0, Spawn)
	            AddTimer(NPC, 8000, "EcologyEmotes",1,Spawn)
	            
	           elseif choice == 10 then
	            PlayFlavor(NPC, "", "", "cough", 0, 0, Spawn)
	            AddTimer(NPC, 8000, "EcologyEmotes",1,Spawn)
	            
                end
end