#Triggers when no player holds the guide. Check storage from earlier and reset the gamerule.
execute if score $GuideFeedback Math matches 1 run gamerule sendCommandFeedback true
data remove storage world GuideHeld