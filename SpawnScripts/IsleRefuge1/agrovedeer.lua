--[[
    Script Name    : SpawnScripts/IsleRefuge1/agrovedeer.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.05 07:09:57
    Script Purpose : 
                   : 
--]]
local DiseaseCheck = false

function spawn(NPC)
   local Level = GetLevel(NPC)
    local level1 = 2
    local level2 = 3
    local difficulty1 = 6
    local hp1 = 45
    local power1 = 35
    local difficulty2 = 6
    local hp2 = 75
    local power2 = 45
    local difficulty3 = 6
    local hp3 = 110
    local power3 = 55
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
    end

    SetInfoStructUInt(NPC, "friendly_target_npc", 1)
    Diseased(NPC)   
    ChooseMovement(NPC)
end



function Diseased(NPC)
    choice= MakeRandomInt(1,2)
    if choice == 1 then
    else
        DiseaseCheck = true
        SpawnSet(NPC,"visual_state",11395 )
        local hp = GetMaxHP(NPC) * 0.25
        ModifyHP(NPC, -20)
    end
end

function casted_on(NPC, Spawn, SpellName)  --Priests use minor heal if the deer is diseased.  These deer will then give updates for scouts to scouts.
  if SpellName == 'Minor Healing' and not IsInCombat(NPC) then
    choice = MakeRandomInt(1,4)
    if choice ==1 then
    SendMessage(Spawn, "The grove deer bleats appreciatively as it appears healthier.")
    elseif choice ==2 then
    SendMessage(Spawn, "The grove deer's coat returns to a natual sheen.")
    elseif choice ==3 then
    SendMessage(Spawn, "The grove deer's eyes glow normally as you purge its malady.")
    else
    SendMessage(Spawn, "The grove deer's hooves stomp thankfully as its disease abates.")
    end        
    DiseaseCheck = false
    SpawnSet(NPC,"visual_state",0 )
    FaceTarget(NPC,Spawn)
    AddTimer(NPC,18000,"DiseaseReturn")   

    end
end

function DiseaseReturn(NPC) --Reset Disease
    DiseaseCheck = true
    SpawnSet(NPC,"visual_state",11395)
end   

function healthchanged(NPC) -- So Health on Diseased never excedes 75% outside of combat
    if DiseaseCheck ==true  and not IsInCombat(NPC) then
        local hp = GetMaxHP(NPC) * 0.75
        ModifyHP(NPC, -20)
    end
end
        

function death (NPC,Spawn) -- Gives Quest Update if on the scout quest 'Deer Hunt'.  ONLY Healthy deer update.
    if DiseaseCheck==false then
        if GetQuestStep(Spawn,5737)==1 then
            SetStepComplete(Spawn,5737,1)
        end
    end
end

function ChooseMovement(NPC)
	local route = math.random(1,4)
	if route == 1 then
	    RouteOne(NPC, Spawn)
	elseif route == 2 then
	    RouteTwo(NPC, Spawn)
	elseif route == 3 then
	    RouteThree(NPC, Spawn)
	elseif route == 4 then
	    RouteFour(NPC, Spawn)
	end
end

function RouteOne(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
    MovementLoopAddLocation(NPC, X + 12, Y, Z, 2,math.random(5,10))
	MovementLoopAddLocation(NPC, X + 12, Y, Z + 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 14, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 5, Y, Z + 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
end

function RouteTwo(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
    MovementLoopAddLocation(NPC, X - 5, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 14, Y, Z - 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 12, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 12, Y, Z - 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 1, 0)
end

function RouteThree(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 12, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 5, Y, Z - 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 14, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 12, Y, Z - 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
end

function RouteFour(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 12, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 5, Y, Z + 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 14, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 12, Y, Z + 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
end

function respawn(NPC, Spawn)
    spawn(NPC)
end

