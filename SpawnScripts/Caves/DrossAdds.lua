--[[
    Script Name    : SpawnScripts/Caves/DrossAdds.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.03 03:10:43
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGolem1.lua")

function spawn(NPC)
    AddTimer(NPC,math.random(2500,6000),"AttackRocks")
end

function respawn(NPC)
	spawn(NPC)
end

function AttackRocks(NPC)   --Simplified the below version to this version for attacking rocks.
    if not IsInCombat(NPC) then
    PlayAnimation(NPC,10783) --attack
    end
    AddTimer(NPC, math.random(7000,8500), "AttackRocks")
end  

--[[
function AttackRocks(NPC)

    local rockattack = math.random (1, 4)

            if rockattack == 1 then
                    AddTimer(NPC, 100, "stop_attack")  
            else
                    AddTimer(NPC, 100, "Rocks") 	
            end 
end

function Rocks(NPC)
    if not IsInCombat(NPC) then
    SpawnSet(NPC, "visual_state", "10783")	-- Start attacking
    end
    AddTimer(NPC, 3500, "stop_attack")	        -- for 2 seconds, then stop
end


function stop_attack(NPC)
    SpawnSet(NPC, "visual_state", "0") 	        -- Stop attacking
    AddTimer(NPC, 8000, "AttackRocks")
end

]]--
