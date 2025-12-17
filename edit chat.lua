local lp = game.Players.LocalPlayer
game.TextChatService.OnIncomingMessage = function(message)
    if message.TextSource and message.TextSource.UserId == lp.UserId and message.Status == Enum.TextChatMessageStatus.Success then
        local message_id = message.MessageId  
        game.TextChatService.OnIncomingMessage = nil
        task.wait(2)
        replicatesignal(game.TextChatService.ClientToServerMessageReplicateSignalV2,"edited message","b",message_id, game.TextChatService.TextChannels.RBXGeneral[lp.Name],game.TextChatService.TextChannels.RBXGeneral)
    end
end
