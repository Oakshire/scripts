--[[
        Script Name     : SpawnScripts/QueensColony/aSapswillvillager133771749.lua
	Script Purpose	: Makes the sapswill on the Queen's Colony run around the rock.
	Script Author	: Scatman
	Script Date	: 2008.12.15
        Modified Date.  : 2020.04.30
        Modified by.    : premierio015
	Notes	        : Changed speed from 4 to 7, now running around circle is more look a like Live version.
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, -75.98, 0.26, -238.35, 7, 0)
	MovementLoopAddLocation(NPC, -72.04, 0.25, -240.76, 7, 0)
	MovementLoopAddLocation(NPC, -73.36, 0.26, -245.79, 7, 0)
	MovementLoopAddLocation(NPC, -78.16, 0.35, -248.07, 7, 0)
	MovementLoopAddLocation(NPC, -82.81, 1.69, -245.62, 7, 0)
	MovementLoopAddLocation(NPC, -85.91, 2.09, -240.37, 7, 0)
	MovementLoopAddLocation(NPC, -82.86, 1.75, -237.19, 7, 0)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	math.randomseed(os.time())
        text = math.random(1,3)

        if text == 1 then
            Say(NPC, "Almost there!")
        elseif text == 2 then
            Say(NPC, "Wait, seen you before I have?")
        else
            Say(NPC, "Trouble! I'm on the way...")	
        end
end

function respawn(NPC)
end
