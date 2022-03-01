--[[
    Script Name    : SpawnScripts/Lavastorm/najenaElevatorcontrol.lua
    Script Author  : smash
    Script Date    : 2016.01.14 09:01:52
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
end


function casted_on(NPC, Caster, SpellName)
--Say(NPC, SpellName)
	MoveElevator(NPC, SpellName)
end

--There are three possible locations for this Elevator - top, middle, bottom - it can be raised or lowered
function MoveElevator(NPC, Direction)
	local Elevator = GetSpawn(NPC, 1710230)
	if GetTempVariable(Elevator, "moving") == "true" then
		return
	end
	
	local current_pos = GetTempVariable(Elevator, "current_pos")
	if Direction == "Raise Elevator" then
		if current_pos == "middle" then
			AddTimer(NPC, 3000, "MoveElevatorToTop", 1, Elevator)
			SetElevatorMoving(NPC, Elevator)
		elseif current_pos == "bottom" then
			AddTimer(NPC, 3000, "MoveElevatorToMiddle", 1, Elevator)
			SetElevatorMoving(NPC, Elevator)
		end
	elseif Direction == "Lower Elevator" then
--Say(NPC, "Lower Elevator branch")
		if current_pos == "top" then
--Say(NPC, "Lower - top")
			AddTimer(NPC, 3000, "MoveElevatorToMiddle", 1, Elevator)
			SetElevatorMoving(NPC, Elevator)
		elseif current_pos == "middle" then
--Say(NPC, "Lower - middle")
			AddTimer(NPC, 3000, "MoveElevatorToBottom", 1, Elevator)
			SetElevatorMoving(NPC, Elevator)
		end
	end
end

--The trip from top->middle takes about 18 seconds, middle->bottom about 17 seconds - add 3 seconds to account for delay
function MoveElevatorToTop(NPC, Elevator)
	MoveToLocation(Elevator, -37.9433, -127.518, 205.8)
	SetTempVariable(Elevator, "current_pos", "top")
	AddTimer(NPC, 21000, "SetElevatorNotMoving", 1, Elevator)
end

function MoveElevatorToMiddle(NPC, Elevator)
--Say(NPC, "MoveElevatorToMiddle function")
	local current_pos = GetTempVariable(Elevator, "current_pos")
	MoveToLocation(Elevator, -37.9433, -212.726, 205.8)
	SetTempVariable(Elevator, "current_pos", "middle")
	if current_pos == "top" then
		AddTimer(NPC, 21000, "SetElevatorNotMoving", 1, Elevator)
	else
		AddTimer(NPC, 20000, "SetElevatorNotMoving", 1, Elevator)
	end
end

function MoveElevatorToBottom(NPC, Elevator)
	MoveToLocation(Elevator, -37.9433, -294.3962, 205.8)
	SetTempVariable(Elevator, "current_pos", "bottom")
	AddTimer(NPC, 20000, "SetElevatorNotMoving", 1, Elevator)
end

function SetElevatorMoving(NPC, Elevator)
	SetTempVariable(Elevator, "moving", "true")
end

function SetElevatorNotMoving(NPC, Elevator)
--Say(NPC, "Done moving")
	SetTempVariable(Elevator, "moving", nil)
end