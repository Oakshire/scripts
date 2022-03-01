--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
end

function death(NPC, Spawn)
	Vith = GetSpawn(NPC, 2540002)
	
	choice = math.random(1, 2)
	if choice == 1 then
		Say(Vith, "No, not the totems! How did you know?")
	else
		Say(Vith, "Don't touch those!")
	end
	
	AddTimer(Vith, 3000, "CheckLastTotem")
	Despawn(NPC, 2000)
end