-- contactTable starts as an empty global table and is accessable from all scripts.

location_visited = function(id)
    print("location_visited: " .. tostring(id) .. ",")
    print(contactTable)

    if(id == 1518617916 and contactTable.flint.progress == 0.2) then
        contactTable.flint.progress = 0.3
        Character.giveInsp(client,"awaken");
        message = [[<td align=center><b>Medicom and Defeat</b></td><br><br><br>
        The Medicom is a state of the art analysis and healing device. It will analyze the current medical status of a friendly target and teleport them to the nearest hospital upon defeat. Equipping every Hero with a Medicom patch is the only thing keeping Paragon City from being overrun.<br><br>
        If you have an associate that can revive you, you may wait for that instead by not clicking OK in the dialog box that appears upon defeat.<br><br>]]
        MapClientSession.simple_dialog(client,message)
    elseif id == 1852042661 then
        MapClientSession.simple_dialog(client,"Information Box.<br><br>Have 100 INF!")
        Character.giveInf(client, 100);
        --Character.giveXp(client,100)
   
    else  
        MapClientSession.simple_dialog(client,"location_visited: " .. tostring(id))
    end
    
    return ""
end
