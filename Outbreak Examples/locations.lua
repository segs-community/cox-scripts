
location_visited = function(name, location )
   printDebug("Location name: " .. name .. " Loc X: " .. round2(location.x, 4) .. " Y: " .. round2(location.y, 4) .. " Z: " .. round2(location.z, 4))
   
   vec3Test = vec3.new(round2(location.x, 4), round2(location.y, 4), round2(location.z, 4))
   Character.faceLocation(client.m_ent, vec3Test) 

   flintContact = FindContactByNpcId(1939) -- If parks used a location, his object would need to be updated here.

   if (name == 'TutorialConningPlaque2' and flintContact.currentStanding == 2) then
       flintContact.currentStanding = 3
       flintContact.canUseCell = true
       Character.addUpdateContactList(client, flintContact, flintLocation)
       Character.giveInsp(client,"awaken");
       message = [[<td align=center><b>Medicom and Defeat</b></td><br><br><br>
       The Medicom is a state of the art analysis and healing device. It will analyze the current medical status of a friendly target and teleport them to the nearest hospital upon defeat. Equipping every Hero with a Medicom patch is the only thing keeping Paragon City from being overrun.<br><br>
       If you have an associate that can revive you, you may wait for that instead by not clicking OK in the dialog box that appears upon defeat.<br><br>]]
       MapClientSession.simple_dialog(client,message)
   elseif name == 'TutorialConningPlaque1' then
       MapClientSession.simple_dialog(client,"Information Box.")
       Character.giveInf(client, 100);
       Character.giveXp(client,100)
   end
    return ""
end

--Helper functions
function round(num, numDecimalPlaces)
    local mult = 10^(numDecimalPlaces or 0)
    return math.floor(num * mult + 0.5) / mult
  end

  function round2(num, numDecimalPlaces)
    return tonumber(string.format("%." .. (numDecimalPlaces or 0) .. "f", num))
  end