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
	FaceTarget(NPC, Spawn)
	choice = math.random(1, 4)

	if choice == 1 then
		PlayFlavor(NPC, "", "Spirocs? Hah!", "", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "To Gorowyn.", "", 0, 0, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "The field is rough today, which is just how we like it.", "", 0, 0, Spawn)
	else
		PlayFlavor(NPC, "", "Test yourself daily, or your enemies will do it for you.", "", 0, 0, Spawn)
	end
end

function respawn(NPC)
	spawn(NPC)
end
