--[[
	Script Name	: SpawnScripts/Graystone/BarmaidViolet.lua
	Script Purpose	: Barmaid Violet <Provisioner>
	Script Author	: Dorbin
	Script Date	: 2022.03.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")


function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericEcologyHail(NPC, Spawn, faction)	
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 859.86, -20.06, -120.83, 2, 0)
	MovementLoopAddLocation(NPC, 862.64, -20.03, -120.39, 2, 0)
	MovementLoopAddLocation(NPC, 866.48, -20.06, -121.48, 2, 0)
	MovementLoopAddLocation(NPC, 869.34, -20.06, -120.83, 2, 1,"FaceTable2")	
	MovementLoopAddLocation(NPC, 869.34, -20.06, -120.83, 2, math.random(10, 15),"FaceTable")
	MovementLoopAddLocation(NPC, 868.83, -20.06, -120.78, 2, 0)
	MovementLoopAddLocation(NPC, 875.04, -20.06, -119.68, 2, 0)
	MovementLoopAddLocation(NPC, 876.95, -20.06, -117.84, 2, 1)	
	MovementLoopAddLocation(NPC, 876.95, -20.06, -117.84, 2, 10, "VioletWaitsCopper")
	MovementLoopAddLocation(NPC, 877.33, -20.06, -117.6, 2, 0)
	MovementLoopAddLocation(NPC, 877.89, -20.06, -119.84, 2, 0)
	MovementLoopAddLocation(NPC, 879.27, -20.06, -119.74, 2, 0)
	MovementLoopAddLocation(NPC, 883.46, -20.06, -119.11, 2, 1)	
	MovementLoopAddLocation(NPC, 883.46, -20.06, -119.11, 2, 10,"FaceTable")
	MovementLoopAddLocation(NPC, 883.88, -20.06, -118.7, 2, 0)
	MovementLoopAddLocation(NPC, 876.2, -20.06, -119.36, 2, 0)
	MovementLoopAddLocation(NPC, 873.36, -20.06, -116.48, 2, 0)
	MovementLoopAddLocation(NPC, 868.51, -20.06, -117.08, 2, 0)
	MovementLoopAddLocation(NPC, 864.92, -20.06, -119.74, 2, 0)
	MovementLoopAddLocation(NPC, 859.3, -20.06, -119.94, 2, math.random(10, 15))
	MovementLoopAddLocation(NPC, 860.69, -20.06, -125.12, 2, math.random(10, 15))
end

function FaceTable2(NPC)
	SpawnSet(NPC, "heading", "178")
end

function FaceTable(NPC)

   choice = math.random(1,3)   
         if choice == 1 then
                PlayFlavor(NPC, "","", "nod", 0, 0)
         elseif choice == 2 then
                PlayFlavor(NPC, "","", "hello", 0, 0)
            else  
                PlayFlavor(NPC, "","", "no", 0, 0)
        end
end



function CopperEmotes(NPC)
    local Copper = GetSpawn(NPC, 2350038)
	
	if Copper ~= nil then 
    choice = math.random(1,3)   
         if choice == 1 then
                PlayFlavor(Copper, "","", "shrug", 0, 0)
        elseif choice == 2 then
                PlayFlavor(Copper, "","", "agree", 0, 0)            
        else  
                PlayFlavor(Copper, "","", "heckno", 0, 0) 
        end
    end
end

function VioletWaitsCopper(NPC)
    local Copper = GetSpawn(NPC, 2350038)
	if Copper ~= nil then 
    choice = math.random(1,3)   
         if choice == 1 then
                PlayFlavor(NPC, "","", "tap", 0, 0)
        elseif choice == 2 then
                PlayFlavor(NPC, "","", "scold", 0, 0)            
        else  
                PlayFlavor(NPC, "","", "threaten", 0, 0)
    AddTimer(NPC, 2000, "CopperEmotes")                 
         end
    end
end


--[[ Parsed data w/o Voiceovers
    choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "", "Please mind the plates, they're very hot.", "scold", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Tell me, do you prefer Halfling or Elven cuisine?  I myself have a hard time deciding between the two.", "confused", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Welcome friend, welcome.  I hope you brought your appetite with you!", "wink", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "Fresh baubbleberry pie, come and get some while it's hot!", "beckon", 1689589577, 4560189, Spawn)
	else
	end
--]]




