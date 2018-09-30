--MapClientSession.simple_dialog(client, "test")

plaque_visited = function(id)
    print("plaque_visited: " .. tostring(id) .. "\n")

    if id == 1852042661 then
        
    elseif id == 1774750002 then
        return "Police callbox"     
    elseif id == 1774750002 then
        return "Police callbox2"
    else
        MapClientSession.simple_dialog(client, "plaque_visited: " .. tostring(id))
    end

    return ""
end
